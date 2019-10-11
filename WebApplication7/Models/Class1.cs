using System.ComponentModel;
using System.Collections;


namespace WebApplication7.Models
{
    public class Class1
    {
        public string name { get; set; }
        [DisplayName("地址")]
        public int id { get; set; }
        public int age { get; set; }
        public string username { get; set; }
        public string password { get; set; }
    }
}