<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PmoWebApp.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="col-sm-6 col-sm-offset-3 form-box ">
        <div class="form-top">
            <div class="form-top-left">
                <h3>Login</h3>
                <p>Enter your username and password to log on:</p>
            </div>
            <div class="form-top-right">
                <img src="Content/assets/img/Crest_of_the_Prime_Minister_of_Singapore.png" />
            </div>
        </div>
        <div class="form-bottom">
            <form role="form" method="post" class="login-form" runat="server">
                <div class="form-group">
                    <label class="sr-only" for="form-username">Username</label>
                    <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="form-password">Password</label>
                    <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                </div>
                <%--<button type="submit" class="btn">Sign in</button>--%>
                <button type="submit" id="LoginBtn" runat="server" class="btn" onserverclick="LoginBtn_Click">Sign In</button>
            </form>
        </div>
        <a href="dashboard.aspx">Sign in</a>
    </div>
</div>

</asp:Content>
