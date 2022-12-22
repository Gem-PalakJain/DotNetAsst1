using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace FreeCodeCamp.Migrations
{
    /// <inheritdoc />
    public partial class UsersToDb : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "GemUserDetails",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Gender = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DOB = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GemUserDetails", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "GemPasswordDetails",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GemPasswordDetails", x => x.ID);
                    table.ForeignKey(
                        name: "FK_GemPasswordDetails_GemUserDetails_ID",
                        column: x => x.ID,
                        principalTable: "GemUserDetails",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "GemPasswordDetails");

            migrationBuilder.DropTable(
                name: "GemUserDetails");
        }
    }
}
