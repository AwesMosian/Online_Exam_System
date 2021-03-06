﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Score.aspx.cs" Inherits="Score" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" runat="server" Width="625px" 
    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
    DataKeyNames="ResultId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ResultId" HeaderText="ID" ReadOnly="True" 
                SortExpression="ResultId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                SortExpression="SubjectName" />
            <asp:BoundField DataField="TestDate" HeaderText="TestDate" 
                SortExpression="TestDate" />
            <asp:BoundField DataField="NumberOfQuestions" HeaderText="Number Of Questions" 
                SortExpression="NumberOfQuestions" />
            <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=PC-PC;Initial Catalog=OnlineQuiz;Integrated Security=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblResult]">
</asp:SqlDataSource>
</asp:Content>
