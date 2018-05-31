<%@ Page Title="" Language="C#" MasterPageFile="~/clientSide/ClientSide.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TempelateHandling.clientSide.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container_12">
    <div class="grid_12">
      <h3 class="head2">Our Menu</h3>
    </div>  
    
    <div class="tabs tb gallery">
             <div class="div-nav  ">
             <div class="grid_12">
                 <ul class="nav">
                    <li class="selected"><a href="#tab-1">Salads</a></li>
           <%---          <li><a href="#tab-2">Soups</a></li>
                    <li><a href="#tab-3">Appetizers</a></li>
                    <li><a href="#tab-4">Beverages</a></li>
                    <li><a href="#tab-5">Desserts</a></li>
                    <li><a href="#tab-6">Lunch Specials</a></li>---%>
                 </ul>










             </div>    
             </div>



             <div class="div-tabs">
              <div  id="tab-1" class="tab-content gallery1">
                  <div class="grid_3">
                    <a href="client_images/big1.jpg" class="gal"><img src="client_images/page3_img1.jpg" alt=""><span></span></a> 
                    <div class="col2"><span class="col3"><a href="#">Cras facilisis</a></span> $ 19.99</div>
                      <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn primary" />
                      
                  </div>
                  </div>
                  
              </div>
             
 
             </div>
        </div>
  






</asp:Content>
