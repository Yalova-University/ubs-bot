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
            int kosul1, kosul2;
            Console.WriteLine("Giriş yapmak için 1 e basınız!");
            kosul1 = Convert.ToInt32(Console.ReadLine());
            if (kosul1 == 1)
            {
                IWebDriver driver = new ChromeDriver();
                driver.Navigate().GoToUrl("http://ubs.yalova.edu.tr//Home/SubLogin?ReturnUrl=http://ubs.yalova.edu.tr//AIS/Student/OnlineClass/Index?sapid=f42ee5559b93438d#");
                driver.FindElement(By.Id("username")).SendKeys("202106015");
                driver.FindElement(By.Id("password")).SendKeys("acumk6001**");
                Console.WriteLine("Verileri Çekmek İçin 2 ye basınız!");
                kosul2 = Convert.ToInt32(Console.ReadLine());
                if (kosul2 == 2)
                {
                    IReadOnlyCollection<IWebElement> dersler = driver.FindElements(By.XPath("//*[@id='body-container']/div/div/div/div/div/div/div/ul/li/div"));
                    foreach (var item in dersler)
                    {
                        var e = item.Text;
                        Console.WriteLine(e);
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
