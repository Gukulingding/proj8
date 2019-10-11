<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>用户登录</h1>
        <p>
            用户名：
         
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            密&nbsp;&nbsp;&nbsp; 码：<asp:TextBox ID="TextBox2"  TextMode="Password"  runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
        </p>
        </div>

   <div class="jumbotron">
        <h1>用户注册</h1>
       <p>
            昵称：
         
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
       <p>
            年级：
         
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            用户名：
         
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            密&nbsp;&nbsp;&nbsp; 码：<asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="name" HeaderText="昵称" SortExpression="name" />
                    <asp:BoundField DataField="age" HeaderText="年龄" SortExpression="age" />
                    <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ceshi1010ConnectionString %>" DeleteCommand="DELETE FROM [usermain] WHERE [id] = @id" InsertCommand="INSERT INTO [usermain] ([name], [age], [username], [password]) VALUES (@name, @age, @username, @password)" SelectCommand="SELECT * FROM [usermain]" UpdateCommand="UPDATE [usermain] SET [name] = @name, [age] = @age, [username] = @username, [password] = @password WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        </div>


</asp:Content>
