using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace postgresql_ile_bağlama
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string connectionString = "Server=localhost;port=5432;Database=csharp;user Id=postgres;Password=dbhunter";

        void GetAllCustomers()
        {
            var connection = new NpgsqlConnection(connectionString);
            connection.Open();
            string query = "Select * From customers";
            var command = new NpgsqlCommand(query, connection);
            var adapter = new NpgsqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
            connection.Close();
            
        }
        private void btnListele_Click(object sender, EventArgs e)
        {
            GetAllCustomers();
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            string customerName = txtCustomerNaem.Text;
            string customerSurname = txtCustomerSurname.Text;
            string customerCity = txtCustomerCity.Text;
            var connection = new NpgsqlConnection (connectionString);
            connection.Open();
            string query = "insert into customers (CustomerName,CustomerSurname,CustomerCity) values (@customerName, @customerSurname, @customerCity)";
            var command = new NpgsqlCommand(query,connection);
            command.Parameters.AddWithValue("customerName", customerName);
            command.Parameters.AddWithValue("customerSurname", customerSurname);
            command.Parameters.AddWithValue("customerCity", customerCity);
            command.ExecuteNonQuery();
            MessageBox.Show("Ekleme işlemi başarılı");
            connection.Close();
            GetAllCustomers();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            int customerId = int.Parse(txtCustomerId.Text);
            var connection = new NpgsqlConnection(connectionString);
            connection.Open();
            string query = "delete  from customers where CustomerId=@customerId";
            var command = new NpgsqlCommand(query, connection);
            command.Parameters.AddWithValue("customerId", customerId);
            command.ExecuteNonQuery();
            MessageBox.Show("silme işlemi gerçekleştirildi.");
            connection.Close();
            GetAllCustomers();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtCustomerId.Text);
            string customerName = txtCustomerNaem.Text;
            string customerSurname = txtCustomerSurname.Text;
            string customerCity = txtCustomerCity.Text;
            var connection = new NpgsqlConnection(connectionString);
            connection.Open();
            string query = "update  customers set CustomerName=@customerName, CustomerSurname=@customerSurname, CustomerCity=@customerCity where CustomerId=@id";
            var command = new NpgsqlCommand(query, connection);
            command.Parameters.AddWithValue("customerName", customerName);
            command.Parameters.AddWithValue("customerSurname", customerSurname);
            command.Parameters.AddWithValue("customerCity", customerCity);
            command.Parameters.AddWithValue("id", id);
            command.ExecuteNonQuery();
            MessageBox.Show("Güncellendi");
            connection.Close();
            GetAllCustomers();

        }
    }
}
