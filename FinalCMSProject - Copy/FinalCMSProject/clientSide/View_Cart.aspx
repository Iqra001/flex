<%@ Page Title="" Language="C#" MasterPageFile="~/clientSide/ClientSide.Master" AutoEventWireup="true" CodeBehind="View_Cart.aspx.cs" Inherits="TempelateHandling.clientSide.View_Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <center>
     <div class="panel-body">
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-responsive" ShowFooter="True" Width="702px" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" onRowEditing="grd_RowEditing" OnRowCancelingEdit="grid_canceledit" OnRowUpdating="grid_updating" >
            <Columns>
                <asp:TemplateField Visible="false">
                    <HeaderTemplate>Item ID</HeaderTemplate>
                    <ItemTemplate>

                        <asp:Label ID="lblId" runat="server" Text='<%#Bind("ID") %>'></asp:Label> </ItemTemplate>
                       
                   
                    <FooterTemplate></FooterTemplate>
                   
                </asp:TemplateField>
                
              <asp:TemplateField>
                    <HeaderTemplate>Item Picture</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="70" Width="100px" ImageUrl='<%#Bind("Picture") %>' />
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Item Name</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                   
                </asp:TemplateField>
                                
                <asp:TemplateField>
                    <HeaderTemplate>Item Sale Price</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblSalePrice" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField>
                    <HeaderTemplate>Item Quantity</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblQuantity" runat="server" Text='<%#Bind("QUANTITY") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtQuantity" runat="server" Text='<%#Bind("QUANTITY") %>'></asp:TextBox> </EditItemTemplate>
                   <FooterTemplate>
                        <asp:Label ID="lblFooterQuantity" runat="server" Text="0"></asp:Label>
                    </FooterTemplate>
                </asp:TemplateField>

                
                <asp:TemplateField>
                    <HeaderTemplate>Item Amount</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAmount" runat="server" Text='<%#Bind("Amount") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>

                        <asp:Label ID="lblFooterAmount" runat="server" Text="0"></asp:Label>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Item Description</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDescription" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="true" />

                <asp:CommandField ShowEditButton="true" />
                     
               
                
                
               
                
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
      <br />
      <br />
      <asp:Button ID="btnContinuePurchasing" runat="server" Text="Continue Purchasing" Font-Size="Large" CssClass="btn btn-primary" OnClick="btnContinuePurchasing_Click" />
      &nbsp;
      <asp:Button ID="btnPayNow" runat="server" Text="Pay Now" Font-Size="Large" CssClass="btn btn-primary" OnClick="btnPayNow_Click" />


        </center>
</asp:Content>
