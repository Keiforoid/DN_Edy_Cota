using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AudioManager;

namespace DN_1._2_Edy_Cota_v1._0
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("Escriba el vehiculo para reproducir su sonido!");

                string tipo = Console.ReadLine().ToLower();

                Auto auto = null;

                switch (tipo)
                {
                    case "automovil":
                        auto = new Automovil();
                        break;

                    case "camion":
                        auto = new Camion();
                        break;

                    case "tren":
                        auto = new Tren();
                        break;

                    default:
                        Console.WriteLine("Vehiculo no encontrado!");
                        System.Threading.Thread.Sleep(2000);
                        break;
                }

                if (auto != null)
                {
                    auto.SonidoVehiculo();
                }
            }
        }
    }
}
