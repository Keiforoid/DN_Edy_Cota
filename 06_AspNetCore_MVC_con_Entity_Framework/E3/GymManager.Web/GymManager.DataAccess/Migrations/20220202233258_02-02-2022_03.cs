using Microsoft.EntityFrameworkCore.Migrations;

namespace GymManager.DataAccess.Migrations
{
    public partial class _02022022_03 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
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
                newName: "Assists");

            migrationBuilder.RenameIndex(
                name: "IX_Assistances_AssitanceTypeId",
                table: "Assists",
                newName: "IX_Assists_AssitanceTypeId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Assists",
                table: "Assists",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Assists_AssitanceTypes_AssitanceTypeId",
                table: "Assists",
                column: "AssitanceTypeId",
                principalTable: "AssitanceTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Assists_AssistanceId",
                table: "Members",
                column: "AssistanceId",
                principalTable: "Assists",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Assists_AssitanceTypes_AssitanceTypeId",
                table: "Assists");

            migrationBuilder.DropForeignKey(
                name: "FK_Members_Assists_AssistanceId",
                table: "Members");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Assists",
                table: "Assists");

            migrationBuilder.RenameTable(
                name: "Assists",
                newName: "Assistances");

            migrationBuilder.RenameIndex(
                name: "IX_Assists_AssitanceTypeId",
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
    }
}
