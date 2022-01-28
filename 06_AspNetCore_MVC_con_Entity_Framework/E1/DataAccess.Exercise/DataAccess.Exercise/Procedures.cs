using DataAccess.Exercise.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Exercise
{
    public class Procedures
    {
        const string mysqlConnectionString = "server=localhost;port=3306;database=gymmanager;user=root;CharSet=utf8;SslMode=none;Pooling=false;AllowPublicKeyRetrieval=True;password=1234";

        public void CreateSale(int idUser, int idInventory, int cuantity)
        {
            MySqlConnector.MySqlConnection connection = new MySqlConnector.MySqlConnection(mysqlConnectionString);
            connection.Open();

            try
            {
                MySqlConnector.MySqlCommand command = new MySqlConnector.MySqlCommand("CreateSale", connection);
                command.Parameters.AddWithValue("_idUser", idUser);
                command.Parameters.AddWithValue("_idInventory", idInventory);
                command.Parameters.AddWithValue("_cuantity", cuantity);

                command.CommandType = System.Data.CommandType.StoredProcedure;

                command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
        }

        public List<ProductType> GetProductsInProductTypes(int idProductType)
        {
            List<ProductType> productsByType = new List<ProductType>();

            MySqlConnector.MySqlConnection connection = new MySqlConnector.MySqlConnection(mysqlConnectionString);
            connection.Open();

            try
            {
                MySqlConnector.MySqlCommand command = new MySqlConnector.MySqlCommand("GetProductsInProductTypes", connection);
                command.Parameters.AddWithValue("_idProductType", idProductType);

                command.CommandType = System.Data.CommandType.StoredProcedure;

                var reader = command.ExecuteReader();

                while (reader.Read())
                {
                    ProductType product = new ProductType
                    {
                        IdInventory = (int)reader["idInventory"],
                        ProductName = reader["productName"] as string,
                        IdProductType = (int)reader["idProductType"],
                        ProductTypeName = reader["productTypeName"] as string
                    };

                    productsByType.Add(product);
                }
            }
            finally
            {
                connection.Close();
            }

            return productsByType;
        }

        public List<LastWeekMembers> LastWeekRegisteredMembers()
        {
            List<LastWeekMembers> lastWeekNewMembers = new List<LastWeekMembers>();

            MySqlConnector.MySqlConnection connection = new MySqlConnector.MySqlConnection(mysqlConnectionString);
            connection.Open();

            try
            {
                MySqlConnector.MySqlCommand command = new MySqlConnector.MySqlCommand("LastWeekRegisteredMembers", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;

                var reader = command.ExecuteReader();

                while (reader.Read())
                {
                    LastWeekMembers member = new LastWeekMembers
                    {
                        IdMember = (int)reader["idMember"],
                        CreatedOn = (DateTime)reader["createdOn"],
                        Name = reader["name"] as string,
                    };

                    lastWeekNewMembers.Add(member);
                }
            }
            finally
            {
                connection.Close();
            }

            return lastWeekNewMembers;
        }

    }
}
