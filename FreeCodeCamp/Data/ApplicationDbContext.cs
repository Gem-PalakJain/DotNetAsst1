using FreeCodeCamp.Models;
using Microsoft.EntityFrameworkCore;

namespace FreeCodeCamp.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }
                    //model  //table name
        public DbSet<Login> GemUserDetails { get; set; }
        public DbSet<PasswordModel> GemPasswordDetails { get; set; }
    }
}