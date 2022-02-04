using GymManager.DataAccess.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.DataAccess
{
    public class Procedures
    {
        const string mysqlConnectionString = "server=localhost;port=3306;database=gymmanagertest2;user=root;CharSet=utf8;SslMode=none;Pooling=false;AllowPublicKeyRetrieval=True;password=1234";

        public List<MemberAssists> MembersByAssists()
        {
            List<MemberAssists> memberAssistsList = new List<MemberAssists>();

            MySqlConnector.MySqlConnection connection = new MySqlConnector.MySqlConnection(mysqlConnectionString);
            connection.Open();

            try
            {
                MySqlConnector.MySqlCommand command = new MySqlConnector.MySqlCommand("Top20MembersAssistance", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;

                var reader = command.ExecuteReader();

                
                while (reader.Read())
                {
                    UInt64 no = ((UInt64)reader["No"]);
                    var no2 = (int)no;

                    Int64 assist = (Int64)reader["Assist"];
                    int assist2 = (int)assist;
                    MemberAssists memberAssists = new MemberAssists
                    {
                        No = no2,
                        Name = reader["Name"] as string,
                        LastName = reader["LastName"] as string,
                        Assists = assist2
                    };

                    memberAssistsList.Add(memberAssists);
                }
            }
            finally
            {
                connection.Close();
            }

            return memberAssistsList;
        }
    }
}
