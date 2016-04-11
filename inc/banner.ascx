<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<fortyfingers:STYLEHELPER RemoveCssFile="portal.css"  runat="server" />
<fortyfingers:STYLEHELPER RemoveCssFile="default.css,admin.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER RemoveJsFile="jquery-ui.js,dnn.js,dnn.controls.js,dnncore.js,dnn.modalpopup.js" IfUserMode="None" runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<link href="[url]/inc/plugins/font-awesome/css/font-awesome.min.css" media="all" type="text/css" rel="stylesheet"/>
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="c-banner">
  <div class="u-row" data-equalizer>
    <a role="button" class="left-off-canvas-toggle offcanvas-menu-icon" href="#"><span></span> Menu</a>
    <div class="c-banner__navigation">
      <div class="c-banner__mini-nav hide-for-small-only">
        <ul class="c-banner__mini-nav-list">
          <li><a href="/business">Get a Quote</a></li>
          <li><a href="/contact-us">Contact Us</a></li>
        </ul>
        <ul class="c-banner__mini-phone-list">
          <li><div class="c-banner__phone-md"><avt:MyTokens runat='server' token='[RevTemplate:Standard.TollFreeNumber]' /></div></li>
        </ul>
      </div>
    </div>
    <div class="c-banner__phone-sm hide-for-medium-up">
      <a href="tel:<avt:MyTokens runat='server' token='[RevTemplate:Standard.TollFreeNumber]' />"><i class="fa fa-phone"></i><avt:MyTokens runat='server' token='[RevTemplate:Standard.TollFreeNumber]' /></a>
    </div>
  </div>
</header>
