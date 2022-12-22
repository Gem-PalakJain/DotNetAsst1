using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace FreeCodeCamp.Models
{
    public class Login
    {
        [Key]
        public int ID { get; set; }

        [StringLength(60, MinimumLength = 3)]
        [Required]
        [DisplayName("First Name")]
        public string? FirstName { get; set; }

        [StringLength(60, MinimumLength = 2)]
        [Required]
        [DisplayName("Last Name")]
        public string? LastName { get; set; }

        [RegularExpression(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$")]
        [Required]
        public string? Email { get; set; }

        [Required]
        public string? Gender { get; set; }

        [DataType(DataType.Date)]
        [Required]
        [DisplayName("Date of Birth")]
        public string? DOB { get; set; }

        public ICollection<PasswordModel>? GetPasswordModels { get; set; }

    }
}
