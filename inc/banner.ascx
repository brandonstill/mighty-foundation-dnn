<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<fortyfingers:STYLEHELPER RemoveCssFile="portal.css"  runat="server" />
<fortyfingers:STYLEHELPER RemoveCssFile="default.css,admin.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER RemoveJsFile="jquery-ui.js,dnn.js,dnn.controls.js,dnncore.js,dnn.modalpopup.js" IfUserMode="None" runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<dnn:DnnCssInclude runat="server" FilePath="inc/plugins/font-awesome/css/font-awesome.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner" class="c-banner">
  <div class="row" data-equalizer>
    <div class="c-banner__brand" data-equalizer-watch>
      <dnn:LOGO runat="server" />
    </div>
    <div class="c-banner__mini-nav-sm">
      <a class="c-banner__mini-phone" href="tel:<avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />">
        <span><i class="fa fa-phone"></i></span> Call
      </a>
      <a role="button" class="right-off-canvas-toggle offcanvas-menu-icon" href="#"><span></span> Menu</a>
    </div>
    <div class="c-banner__navigation" data-equalizer-watch>
      <div class="c-banner__mini-nav hide-for-small-only">
        <ul class="c-banner__mini-nav-list">
          <li><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></li>
          <li><a href="/client-service/claims">Claims</a></li>
          <li><a href="/contact-us/about-us">About</a></li>
          <li><a role="button" class="right-off-canvas-toggle offcanvas-menu-icon" href="#"><span></span> Menu</a></li>
        </ul>
      </div>  
    </div>
  </div>
</header>