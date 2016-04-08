<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-2-col">
<ar:Banner runat="server" />

<section role="main">
  <div id="TopPane" class="o-top-pane" runat="server"></div>
  <div class="row">
    <div id="ContentPane" class="o-content-pane" runat="server"></div>
    <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
  </div>
  <div id="BottomPane" class="o-bottom-pane" runat="server"></div>
</section>

<ar:ContentInfo runat="server" />
</div>
