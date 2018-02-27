<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="PmoWebApp.history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="purple">
                                    <h4 class="title">History Records</h4>
                                    <p class="category">History records of past crisis</p>
                                </div>
                                <div class="card-content table-responsive">
                                    <%--<table class="table">
                                        <thead class="text-primary">
                                            <th>ID</th>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Date</th>
                                            <th>PID</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><asp:Literal ID="literalID" runat="server"></asp:Literal></td>                        
                                                <td><asp:Literal ID="literalTitle" runat="server"></asp:Literal></td>            
                                                <td><asp:Literal ID="literalDescription" runat="server"></asp:Literal></td>  
                                                <td><asp:Literal ID="literalDate" runat="server"></asp:Literal></td>  
                                                <td><asp:Literal ID="literalPID" runat="server"></asp:Literal></td>   
                                            </tr>
                                        </tbody>
                                    </table>--%>
                                    <asp:GridView ID="GridView1" Border="0" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" DataKeyNames="ID">
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" HeaderStyle-CssClass="text-primary" HeaderStyle-BorderStyle="None" FooterStyle-BorderStyle="None" ControlStyle-BorderStyle="None" ItemStyle-BorderStyle="None" ReadOnly="True" />
                                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="text-primary"  HeaderStyle-BorderStyle="None" FooterStyle-BorderStyle="None" ControlStyle-BorderStyle="None" ItemStyle-BorderStyle="None"  />
                                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"  HeaderStyle-CssClass="text-primary"  HeaderStyle-BorderStyle="None" FooterStyle-BorderStyle="None" ControlStyle-BorderStyle="None" ItemStyle-BorderStyle="None" />
                                            <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" HeaderStyle-CssClass="text-primary"  HeaderStyle-BorderStyle="None" FooterStyle-BorderStyle="None" ControlStyle-BorderStyle="None" ItemStyle-BorderStyle="None" />
                                            <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" HeaderStyle-CssClass="text-primary"  HeaderStyle-BorderStyle="None" FooterStyle-BorderStyle="None" ControlStyle-BorderStyle="None" ItemStyle-BorderStyle="None"  />
                                        </Columns>
                                        
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PMOdbConnectionString2 %>" SelectCommand="SELECT * FROM [History]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
</asp:Content>
