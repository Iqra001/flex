<%@ Page Title="" Language="C#" MasterPageFile="~/clientSide/ClientSide.Master" AutoEventWireup="true" CodeBehind="LoadingPage.aspx.cs" Inherits="TempelateHandling.clientSide.LoadingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    60%
  </div>
</div>
</asp:Content>
