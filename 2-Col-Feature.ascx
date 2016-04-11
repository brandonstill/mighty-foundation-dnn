<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropTop" Src="inc/drop-top.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropBottom" Src="inc/drop-bottom.ascx" %>

<ar:DropTop runat="server" />

<div class="en page-template page-template-feature page-template-2-col">
  <ar:Banner runat="server" />
  
  <section class="o-feature-wrap primary-color" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />)" data-equalizer>
    <div class="o-feature-wrap-color" data-equalizer-watch></div>
    <div class="u-top-row" data-equalizer-watch>

      <div id="FeaturePane" class="o-feature-pane" runat="server">
        <dnn:LOGO runat="server" />
      </div>
    </div>
  </section>
  <section role="main">
    <div id="TopPane" class="top" runat="server"></div>
    <div class="row">
      <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
      <div id="ContentPane" class="o-content-pane" runat="server"></div>
    </div>
    <div id="BottomPane" class="bottom" runat="server"></div>
  </section>

  <ar:ContentInfo runat="server" />
  <ar:DropBottom runat="server" />
</div>
