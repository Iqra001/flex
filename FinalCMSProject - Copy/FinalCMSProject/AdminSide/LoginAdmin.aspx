<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/LoginMasterPage.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="TempelateHandling.AdminSide.LoginAdmin" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading" style="background-color:#286090">
                            <h3 class="panel-title" style="color:white;">Login</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon"> <span class="glyphicon glyphicon-user "></span> </span>
                                         <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" type="email" placeholder="Enter your Email ID"  ></asp:TextBox>  
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtUserName" ForeColor="Red" ErrorMessage="Please enter Email Id"></asp:RequiredFieldValidator>
                                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" TargetControlID="RequiredFieldValidator1">
                                        </ajaxToolkit:ValidatorCalloutExtender>
                                        
                                    </div>
                                    <br />
                                    
                                    <div class="input-group">
                                         <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" name="Password" type="password" value=""></asp:TextBox>

                                    <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" MinimumLowerCaseCharacters="3" MinimumNumericCharacters="3" MinimumSymbolCharacters="4" MinimumUpperCaseCharacters="3" PreferredPasswordLength="8" TargetControlID="txtPassword" TextStrengthDescriptions="weak;medium;strong;" />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                         <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" TargetControlID="RequiredFieldValidator2">
                                         </ajaxToolkit:ValidatorCalloutExtender>
                                    </div>
         
                                    <div class="checkbox">
                                        <label>
                                             <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" value="Remember Me"  /> Remember Me
                                            
                                        </label>
                                    </div>
                                    <a href="SignUp.aspx">For new Account</a>
                                    <br />

 
    
 
                                    <!-- Change this to a button or input when using this as a form -->

                                  
                                    <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-success pull-right" Width="100" OnClick="btnlogin_Click" />
                                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
