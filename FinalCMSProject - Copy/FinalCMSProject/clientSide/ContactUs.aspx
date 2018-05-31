<%@ Page Title="" Language="C#" MasterPageFile="~/clientSide/ClientSide.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TempelateHandling.clientSide.ContactUs" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="col-md-12" style="background-color:white">
 <p style="text-align: center; font-size: 34px; color: black; margin-top: 20px; margin-bottom: 20px; font-weight:400;"> <b>Contact Us </b></p>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <p>If you need to find something, OR want to let us know something, Use the form below to send us message <br /> Your <b>Feedback </b> is so worthy for Us</p>

                </div>
                <div class="col-lg-6">
             <form class="form-control-feedback">

                
                            <div class="form-group col-lg-6">
                                
                                <label for="inputUserName"> Full Name</label>
                           <asp:TextBox ID="txtname" runat="server" placeholder="Full name" CssClass="auto-style3 form-control"></asp:TextBox>
                                
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="inputemail">Email</label>
                                 <asp:TextBox ID="txtemail" runat="server" placeholder="Email" CssClass="auto-style3 form-control"></asp:TextBox>
                            </div>
                           <div class="form-group">
                                <label for="inputmessage">Message</label>
                               <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-success" onclick="btnsubmit_Click"/>
                                
                 </div>
                            
                        </form>
                
                </div>
            </div>
        </div>     
    </div>
  
</asp:Content>
