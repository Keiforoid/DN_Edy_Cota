using Microsoft.EntityFrameworkCore.Migrations;

namespace GymManager.DataAccess.Migrations
{
    public partial class _02022022_02 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Assistance_AssitanceTypes_AssitanceTypeId",
                table: "Assistance");

            migrationBuilder.DropForeignKey(
                name: "FK_Members_Assistance_AssistanceId",
                table: "Members");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Assistance",
                table: "Assistance");

            migrationBuilder.RenameTable(
                name: "Assistance",
                newName: "Assistances");

            migrationBuilder.RenameIndex(
                name: "IX_Assistance_AssitanceTypeId",
                table: "Assistances",
                newName: "IX_Assistances_AssitanceTypeId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Assistances",
                table: "Assistances",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Assistances_AssitanceTypes_AssitanceTypeId",
                table: "Assistances",
                column: "AssitanceTypeId",
                principalTable: "AssitanceTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Assistances_AssistanceId",
                table: "Members",
                column: "AssistanceId",
                principalTable: "Assistances",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Assistances_AssitanceTypes_AssitanceTypeId",
                table: "Assistances");

            migrationBuilder.DropForeignKey(
                name: "FK_Members_Assistances_AssistanceId",
                table: "Members");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Assistances",
                table: "Assistances");

            migrationBuilder.RenameTable(
                name: "Assistances",
                newName: "Assistance");

            migrationBuilder.RenameIndex(
                name: "IX_Assistances_AssitanceTypeId",
                table: "Assistance",
                newName: "IX_Assistance_AssitanceTypeId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Assistance",
                table: "Assistance",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Assistance_AssitanceTypes_AssitanceTypeId",
                table: "Assistance",
                column: "AssitanceTypeId",
                principalTable: "AssitanceTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Assistance_AssistanceId",
                table: "Members",
                column: "AssistanceId",
                principalTable: "Assistance",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
