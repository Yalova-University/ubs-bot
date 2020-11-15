using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace Ubs_Bot
{
    class Program
    {
        static void Main(string[] args)
        {
            int kosul1, kosul2, kosul3;
            Console.WriteLine("Giriş yapmak için 1 e basınız!");
            kosul1 = Convert.ToInt32(Console.ReadLine());
            if (kosul1 == 1)
            {
                IWebDriver driver = new ChromeDriver();
                driver.Navigate().GoToUrl("http://ubs.yalova.edu.tr//Home/SubLogin?ReturnUrl=http://ubs.yalova.edu.tr//AIS/Student/OnlineClass/Index?sapid=f42ee5559b93438d#");
                driver.FindElement(By.Id("username")).SendKeys("202106015");
                driver.FindElement(By.Id("password")).SendKeys("acumk6001**");
                Console.WriteLine("Verileri Temizlemek İçin 2 ye basınız!");
                kosul2 = Convert.ToInt32(Console.ReadLine());
                if (kosul2 == 2)
                {
                    string Query = "DELETE FROM `dersler` WHERE dersler_id";
                    MySqlConnection MyConn2 = new MySqlConnection("Server=localhost;Database=ubs;Uid=root;Pwd='';");

                    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                    MySqlDataReader MyReader2;
                    MyConn2.Open();
                    MyReader2 = MyCommand2.ExecuteReader();

                    Console.WriteLine("Data Deleted");
                    while (MyReader2.Read())
                    {
                    }
                    MyConn2.Close();
                    Console.WriteLine("Verileri çekmek İçin 3 ye basınız!");
                    kosul3 = Convert.ToInt32(Console.ReadLine());
                    if (kosul3 == 3)
                    {
                        IReadOnlyCollection<IWebElement> dersler = driver.FindElements(By.XPath("//*[@id='body-container']/div/div/div/div/div/div/div/ul/li/div"));
                        foreach (var item in dersler)
                        {
                            var e = item.Text;


                            try
                            {

                                string Query2 = "insert into dersler(dersler_icerik) values('" + e + "');";
                                MySqlConnection MyConn22 = new MySqlConnection("Server=localhost;Database=ubs;Uid=root;Pwd='';");
                                MySqlCommand MyCommand22 = new MySqlCommand(Query2, MyConn22);
                                MySqlDataReader MyReader22;
                                MyConn22.Open();
                                MyReader22 = MyCommand22.ExecuteReader();

                                Console.WriteLine("Save Data");
                                while (MyReader22.Read())
                                {
                                }
                                MyConn22.Close();
                            }
                            catch (Exception ex2)
                            {

                                Console.WriteLine(ex2.Message);
                            }


                        }
                    }
                    


                    }
                
            }
            else
            {
                Console.WriteLine("Başka seçenek yok!");
                Console.ReadKey();
            }


        }
    }
}
