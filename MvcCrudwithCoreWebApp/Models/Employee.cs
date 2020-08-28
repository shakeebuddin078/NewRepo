using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MvcCrudwithCoreWebApp.Models
{
    public class Employee
    {
        [Key]
        public int EmployeeId { get; set; }
        [DisplayName("Full Name")]
        [Column(TypeName ="varchar(50)")]
        [Required(ErrorMessage ="This field is required")]
        public string FullName { get; set; }
        [DisplayName("EmpCode")]
        [Column(TypeName ="varchar(50)")]
        public string EmpCode { get; set; }
        [Column(TypeName ="varchar(50)")]
        public string Position { get; set; }
        [DisplayName("Office Location")]
        [Column(TypeName ="varchar(50)")]
        public string OfficeLocation { get; set; }
    }
}
