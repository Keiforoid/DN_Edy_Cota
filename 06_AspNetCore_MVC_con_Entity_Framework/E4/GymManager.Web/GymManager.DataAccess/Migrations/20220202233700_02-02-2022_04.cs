using Microsoft.EntityFrameworkCore.Migrations;

namespace GymManager.DataAccess.Migrations
{
    public partial class _02022022_04 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Members_Assists_AssistanceId",
                table: "Members");

            migrationBuilder.DropIndex(
                name: "IX_Members_AssistanceId",
                table: "Members");

            migrationBuilder.DropColumn(
                name: "AssistanceId",
                table: "Members");

            migrationBuilder.AddColumn<int>(
                name: "MemberId",
                table: "Assists",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Assists_MemberId",
                table: "Assists",
                column: "MemberId");

            migrationBuilder.AddForeignKey(
                name: "FK_Assists_Members_MemberId",
                table: "Assists",
                column: "MemberId",
                principalTable: "Members",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Assists_Members_MemberId",
                table: "Assists");

            migrationBuilder.DropIndex(
                name: "IX_Assists_MemberId",
                table: "Assists");

            migrationBuilder.DropColumn(
                name: "MemberId",
                table: "Assists");

            migrationBuilder.AddColumn<int>(
                name: "AssistanceId",
                table: "Members",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Members_AssistanceId",
                table: "Members",
                column: "AssistanceId");

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Assists_AssistanceId",
                table: "Members",
                column: "AssistanceId",
                principalTable: "Assists",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
