<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="manageCategory.aspx.cs" Inherits="TempelateHandling.AdminSide.addCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*.auto-style1 {
            display: block;
            margin-right: auto;
            margin-left: auto;
            margin-top: 28px;
        }*/
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
 <div class="container">
     <div class="col-lg-12" style="background-image: url(E:\MyFinalProject\TempelateHandling\Imges\ItemPicture\foodbackground.jpg)">
         <div class="row" style="margin-top: 75px">
            <div class="col-lg-6" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputName2">Category Name:</label>
                        <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                       <asp:Button ID="btnSaveCategory" runat="server" Text="Save" OnClick="btnSaveCategory_Click" CssClass="btn btn-primary" />
                             <asp:Button ID="btnViewCategory" runat="server" Text="View Category" OnClick="btnViewCategory_Click" CssClass="btn btn-success" />
                        </div> 
                    </div>
                    <div class="panel-body">
                       
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered col-lg-12" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" Width="426px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:TemplateField Visible="false">
                                    <HeaderTemplate>Category ID </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Bind("Category_ID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Category Name </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%#Bind("Category_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate></FooterTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="true" />

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
                    </div>
                  
                </div>
            </div>
        </div>
     </div>
 </div>
         
   
    


  
            
       
  
       
        
  





    <%--  <div class="container">
        <div class="row">
            <div class="col-lg-12" style="align-content: center; padding-left: 450px; margin-top: 20px">
              
            </div>

        </div>
    </div>--%>
</asp:Content>
