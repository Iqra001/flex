<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="ManageItems.aspx.cs" Inherits="TempelateHandling.AdminSide.ManageItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 80px">
        <div class="row">
            <div class="col-lg-6">
                
                <%--    <div class="form-group">
                        <label class="sr-only" for="form-group-input">My label</label>
                        <input type="text" class="form-control" id="form-group-input" placeholder="My label">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="form-group-input">My label</label>
                        <input type="text" class="form-control" id="form-group-input" placeholder="My label">
                    </div>
                    "--%>
                    <div class="form-group">
                        
                        <div class="col-sm-10">
                           <b> Category Name: </b> 
                <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                <br />
                    
                 <div class="form-group">
                        
                        <div class="col-sm-10">
                            <b> Item Name: </b> <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control" placeholder="Enter your Item name"></asp:TextBox>
                        </div>
                    </div>
                <br />
                     
                 <div class="form-group">
                       
                        <div class="col-sm-10">
                            <b> Item Purchase Price:</b> <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" placeholder="Enter your Purchase Price"></asp:TextBox>
                        </div>
                    </div>
                <br />
               
                  <div class="form-group">
                        
                        <div class="col-sm-10">
                             <b> Item Sale Price:</b> <asp:TextBox ID="txtSalePrice" runat="server" CssClass="form-control" placeholder="Enter your Sale Price"></asp:TextBox>
                        </div>
                    </div>
                <br />

                 <div class="form-group">
                        
                        <div class="col-sm-10">
                             <b> Item Description:</b><asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Enter your Item Description"></asp:TextBox>
                        </div>
                    </div>
                <br />
                  <div class="form-group">
                        
                        <div class="col-sm-10">
                          <b>  Item Image: </b>  <asp:FileUpload ID="FileUpload1" runat="server"  />
                        </div>
                    </div>
                <br />
                <div class="form-group">
                        
                        <div class="col-sm-10" style="align-content:center; margin-top:10px; margin-bottom:20px">
                             <asp:Button ID="btnSaveProducts" runat="server" Text="Save Menu" OnClick="btnSaveProducts_Click" CssClass="btn btn-primary" />
                            <asp:Button ID="btnViewProducts" runat="server" Text="View Menu" OnClick="btnViewProducts_Click" CssClass="btn btn-success" />
                        </div>
                    </div>
             
          
               
                <p>
                    <asp:GridView ID="GridView1" runat="server" Width="500px" CssClass="table-bordered table-responsive" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <HeaderTemplate>Item ID</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Bind("Item_ID") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>Item Picture</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="70" Width="100px" ImageUrl='<%#Bind("Item_Image") %>' />
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>Item Name</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Bind("Item_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>Item Purchase Price</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPurchasePrice" runat="server" Text='<%#Bind("Item_PurchasePrice") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>Item Sale Price</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblSalePrice" runat="server" Text='<%#Bind("Item_SalePrice") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>Item Description</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblDescription" runat="server" Text='<%#Bind("Item_Description") %>'></asp:Label>
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
                </p>
            </div>
        </div>
    </div>

</asp:Content>
