using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FreeCodeCamp.Models
{
    public class PasswordModel
    {
        // Foreign key   
        [Display(Name = "ID")]
        public virtual int ID { get; set; }

        [ForeignKey("ID")]
        public virtual Login? GemUserDetails { get; set; }

        public string? Password { get; set; }
    }
}
