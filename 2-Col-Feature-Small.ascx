<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropTop" Src="inc/drop-top.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropBottom" Src="inc/drop-bottom.ascx" %>

<ar:DropTop runat="server" />

<div class="en page-template page-template-feature-small inner-page-template-2-col">
  <ar:Banner runat="server" />

  <section role="main">
    <div class="row">
      <dnn:LOGO runat="server"/>
    </div>
    <div id="TopPane" class="top" runat="server"></div>
    <div class="row">
      <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
      <div  class="o-content-pane" >

        <div class="feature-wrap-small primary-color" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />)">
          <div class="feature-wrap-color"></div>
          <div class="row">
            <div class="small-12 columns feature-content">
              <div id="FeaturePane" class="o-feature-pane" runat="server"></div>
            </div>
          </div>
        </div>
        <div id="ContentPane" runat="server"></div>

      </div>
    </div>
    <div id="BottomPane" class="bottom" runat="server"></div>
  </section>
  
  <ar:ContentInfo runat="server" />
  <ar:DropBottom runat="server" />
</div>
