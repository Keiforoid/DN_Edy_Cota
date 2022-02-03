using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace GymManager.DataAccess.Migrations
{
    public partial class _02022022_01 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "AssistanceId",
                table: "Members",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "AssitanceTypes",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    NameType = table.Column<string>(type: "varchar(15)", maxLength: 15, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AssitanceTypes", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "Assistance",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    AssitanceTypeId = table.Column<int>(type: "int", nullable: true),
                    DateTime = table.Column<DateTime>(type: "datetime(6)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Assistance", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Assistance_AssitanceTypes_AssitanceTypeId",
                        column: x => x.AssitanceTypeId,
                        principalTable: "AssitanceTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_Members_AssistanceId",
                table: "Members",
                column: "AssistanceId");

            migrationBuilder.CreateIndex(
                name: "IX_Assistance_AssitanceTypeId",
                table: "Assistance",
                column: "AssitanceTypeId");

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Assistance_AssistanceId",
                table: "Members",
                column: "AssistanceId",
                principalTable: "Assistance",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Members_Assistance_AssistanceId",
                table: "Members");

            migrationBuilder.DropTable(
                name: "Assistance");

            migrationBuilder.DropTable(
                name: "AssitanceTypes");

            migrationBuilder.DropIndex(
                name: "IX_Members_AssistanceId",
                table: "Members");

            migrationBuilder.DropColumn(
                name: "AssistanceId",
                table: "Members");
        }
    }
}
