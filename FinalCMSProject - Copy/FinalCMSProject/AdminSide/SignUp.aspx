<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/LoginMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TempelateHandling.AdminSide.SignUp" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                   <%-- <a class="navbar-brand" href="index.html"> <i class="fa fa-home fa-fw"></i>  Home </a> --%>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

<%--                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="#"><i class="fa fa-book fa-fw"></i> Add Category</a></li>
                </ul>
                 <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="#"><i class="fa fa-book fa-fw"></i> Add Items</a></li>
                </ul>--%>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown navbar-inverse">
                       
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="LoginAdmin.aspx"><i class="fa fa-user fa-fw"></i> Login</a>
                            </li>
                            
                            <li class="divider"></li>
                            <li><a href="LoginAdmin.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                        </nav>
                <!-- /.navbar-top-links -->

    <div class="container-fluid">
               
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Profile</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="LoginAdmin.aspx">Home</a></li>
                            <li class="breadcrumb-item active">Profile</li>
                        </ol>
                    </div>
                    
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                               
                               
                                <center class="m-t-30"><img src="../Imges/ItemPicture/loginUser.jpg" CssClass="m-t-30" class="img-circle" width="150" > 
                                    <h4 class="card-title m-t-10">Profile</h4>
                                    <h6 class="card-subtitle">Punjab University</h6>
                                    
                                </center>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <!-- Tab panes -->
                            <div class="card-body">
                                <form class="form-horizontal form-material">
                                    <div class="form-group">
                                         <label class="col-md-10">Full Name</label>
                                      
                                        <div class="col-md-10">
                                           
                                            <asp:TextBox ID="txtfname" runat="server"  CssClass="form-control form-control-line"></asp:TextBox>
                                            
                                             <ajaxToolkit:FilteredTextBoxExtender ID="txtfname_FilteredTextBoxExtender" runat="server" BehaviorID="txtfname_FilteredTextBoxExtender" TargetControlID="txtfname" FilterType="Custom" ValidChars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"/>
                                            
                                             <ajaxToolkit:TextBoxWatermarkExtender ID="txtfname_TextBoxWatermarkExtender" runat="server" BehaviorID="txtfname_TextBoxWatermarkExtender" TargetControlID="txtfname" WatermarkText="Enter your Full Name"/>
                                            
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator></div>
                                    </div>
                                    <div class="form-group">
                                       <label for="example-email" class="col-md-10">Email</label>
                                       
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control form-control-line"   ></asp:TextBox>
                                           
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="txtemail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtemail_TextBoxWatermarkExtender" TargetControlID="txtemail"  WatermarkText="Enter your Email ID"/>
                                           
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-10">Password</label>
                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtPass" runat="server" type="password"  CssClass="form-control form-control-line"></asp:TextBox>
                                            
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="txtPass_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPass_TextBoxWatermarkExtender" TargetControlID="txtPass"  WatermarkText="Enter your Password"/>
                                            
                                            <ajaxToolkit:PasswordStrength ID="txtPass_PasswordStrength" runat="server" BehaviorID="txtPass_PasswordStrength" TargetControlID="txtPass" MinimumLowerCaseCharacters="3" MinimumNumericCharacters="3" MinimumSymbolCharacters="4" MinimumUpperCaseCharacters="3" PreferredPasswordLength="8"  TextStrengthDescriptions="weak;medium;strong;" />
                                            
                                            
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" ErrorMessage="Please Enter Your Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </div> 

                                     <div class="form-group">
                                       <label class="col-md-10"> Confirm Password</label>
                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtconfirmpass" runat="server" type="password"  CssClass="form-control form-control-line"></asp:TextBox>
                                            
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" BehaviorID="txtconfirmpass_TextBoxWatermarkExtender" TargetControlID="txtconfirmpass"  WatermarkText="Enter your Confirm Password"/>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your password didn't match" ControlToCompare="txtPass" ControlToValidate="txtconfirmpass" ForeColor="red"></asp:CompareValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter your Confirm Password" ControlToValidate="txtconfirmpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                            
                                            
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass"  ErrorMessage="Please Enter Your Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </div> 
                                    <div class="form-group">
                                      <label class="col-md-12">Phone No</label>

                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtPhoneNo" runat="server"   CssClass="form-control form-control-line"></asp:TextBox>
                                            
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="txtPhoneNo_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPhoneNo_TextBoxWatermarkExtender" TargetControlID="txtPhoneNo" WatermarkText="Enter Your Phone No" />
                                            
                                            <ajaxToolkit:FilteredTextBoxExtender ID="txtPhoneNo_FilteredTextBoxExtender" runat="server" BehaviorID="txtPhoneNo_FilteredTextBoxExtender" TargetControlID="txtPhoneNo" FilterType="Numbers" ValidChars="123456789"  />
                                            
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Please Enter Your PhoneNo" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </div>



                                     <div class="form-group">
                                      <label class="col-md-12">Account No</label>

                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtAccountNo" runat="server"   CssClass="form-control form-control-line"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your Account No" ForeColor="red" ControlToValidate="txtAccountNo"></asp:RequiredFieldValidator>
                                            
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="txtAccountNo_TextBoxWatermarkExtender" runat="server" BehaviorID="txtAccountNo_TextBoxWatermarkExtender" TargetControlID="txtAccountNo" WatermarkText="Enter Your Account No"/>
                                            
                                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" BehaviorID="txtAccountNo_FilteredTextBoxExtender" TargetControlID="txtAccountNo" FilterType="Numbers" ValidChars="123456789"  />
                                            
                                        </div>
                                         </div>
                                    <div class="form-group">
                                       <label class="col-md-12">Department Name</label>
                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtDepartment" runat="server"   CssClass="form-control form-control-line"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Department name" ForeColor="red" ControlToValidate="txtDepartment"></asp:RequiredFieldValidator>
                                           
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" BehaviorID="txtDepartment_TextBoxWatermarkExtender" TargetControlID="txtDepartment" WatermarkText="Enter your Department name"/>
                                           
                                        </div>
                                    </div>

                                     <div class="form-group">
                                       <label class="col-md-12">Room No</label>
                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtroomNo" runat="server"   CssClass="form-control form-control-line"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter your Room no" ForeColor="red" ControlToValidate="txtroomNo"></asp:RequiredFieldValidator>
                                           
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" BehaviorID="txtroomNo_TextBoxWatermarkExtender" TargetControlID="txtroomNo" WatermarkText="Enter your Room no"/>
                                           
                                        </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-12">Address</label>
                                        
                                        <div class="col-md-10">
                                            <asp:TextBox ID="txtAddress" runat="server"   CssClass="form-control form-control-line" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter your Address" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                                           
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="txtAddress_TextBoxWatermarkExtender" runat="server" BehaviorID="txtAddress_TextBoxWatermarkExtender" TargetControlID="txtAddress" WatermarkText="Enter your Address"/>
                                           
                                        </div>
                                    </div>
                                    
                                    
                                  
                                    <p> &nbsp; </p>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:Button ID="btnSignUp" runat="server" Text="Registration" CssClass="btn btn-success" style="margin-top:25px;" OnClick="btnSignUp_Click"  /> 
                                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Want to update profile?" TargetControlID="btnSignUp" />
                                      <%--  <a href="LoginAdmin.aspx" style="padding-top:5px; margin-left:9px">If you have already Account</a>--%>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
</asp:Content>
