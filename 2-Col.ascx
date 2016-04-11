<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropTop" Src="inc/drop-top.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropBottom" Src="inc/drop-bottom.ascx" %>

<ar:DropTop runat="server" />
<div class="en page-template inner-page-template-2-col">
  <ar:Banner runat="server" />

  <section role="main">
    <div id="TopPane" class="top" runat="server"></div>
    <div class="u-top-row row">
    <div class="row">
      <dnn:LOGO runat="server"/>
    </div>
      <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
      <div id="ContentPane" class="o-content-pane" runat="server"></div>
    </div>
    <div id="BottomPane" class="bottom" runat="server"></div>
  </section>

  <ar:ContentInfo runat="server" />
  <ar:DropBottom runat="server" />
</div>
