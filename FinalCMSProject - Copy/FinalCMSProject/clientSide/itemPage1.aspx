<%@ Page Title="" Language="C#" MasterPageFile="~/clientSide/ClientSide.Master" AutoEventWireup="true" CodeBehind="itemPage1.aspx.cs" Inherits="TempelateHandling.clientSide.itemPage1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12" style="background-color:white;">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="text-center text-capitalize text-info" style="font-size:40px; color:#5f5e4e;"> <b> Our Menu </b></h4>
            </div>
            <div class="col-lg-12" style="margin-top:70px;">
                <div class="row">
                        <div class="col-lg-12 col-lg-push-1 col-md-12 col-sm-12">
                       <asp:ListView ID="catagoryListView" runat="server" style="text-decoration:none">
                        <ItemTemplate >
                            <asp:Label ID="lblID" runat="server" Text='<%#Bind("Category_ID") %>' Visible="false"></asp:Label>
                           
                            <asp:LinkButton ID="lnkBtnCategoryName" runat="server" CssClass="btn btn-success" Text='<%#Bind("Category_Name") %>' OnClick="lnkBtnCategoryName_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                </div>
            
               
            </div>
            <div class="col-lg-12" style="margin-top:20px">
                     <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="margin-top:10px">
                                    <asp:Image ID="imgItem" runat="server" Height="70" Width="100px" CssClass="img-responsive img-thumbnail" ImageUrl='<%#Bind("Item_Image") %>'/><br />
                                    <asp:Label ID="lblID" runat="server" Visible="false" Text='<%#Bind("Item_ID") %>'></asp:Label>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Bind("Item_Name") %>'></asp:Label><br />
                                    <asp:Label ID="lblSalePrice" runat="server" Text='<%#Bind("Item_SalePrice") %>'></asp:Label><br />
                                    <asp:Label ID="lblDescription" runat="server" Text='<%#Bind("Item_Description") %>'></asp:Label><br />
                                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                                   <%-- <ajaxToolkit:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server" Maximum="100" Minimum="1" TargetControlID=--%><%--"txtQuantity" Width="40"/>--%>
                                <%--    <asp:DropDownList ID="ddlQty" runat="server">
                                        <asp:ListItem Text="1"></asp:ListItem>
                                        <asp:ListItem Text="2"></asp:ListItem>
                                        <asp:ListItem Text="3"></asp:ListItem>
                                        <asp:ListItem Text="6"></asp:ListItem>
                                        <asp:ListItem Text="12"></asp:ListItem>
                                    </asp:DropDownList><br />--%>
                                    
                                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="btnAddToCart_Click" /></td>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
            </div>
        </div>
    </div>
    </div>
    
   
</asp:Content>
