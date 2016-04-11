<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="fnn" TagName="Offcanvasmighty" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Offcanvas-mighty.ascx" %>


<!-- start off canvas wrap -->
<div class="off-canvas-wrap" data-offcanvas>

  <!-- off canvas ddr menu -->
  <fnn:Offcanvasmighty MenuExcludes="Admin,Revolution" Align="right" runat="server" />

  <!-- start inner wrap -->
  <div class="inner-wrap">
