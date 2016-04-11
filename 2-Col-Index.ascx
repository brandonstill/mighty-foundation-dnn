<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropTop" Src="inc/drop-top.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropBottom" Src="inc/drop-bottom.ascx" %>

<ar:DropTop runat="server" />

<div class="en page-template page-template-index page-template-2-col">
  <ar:Banner runat="server" />

  <section class="c-homepage-hero" data-equalizer>
    <div class="c-homepage-hero__text" data-equalizer-watch>
        <div class="row">
          <div class="c-banner__brand">
            <dnn:LOGO runat="server" />
            <div class="c-banner__wrap">
              <span class="c-banner__brand1">Your</span>
              <span class="c-banner__brand2">Business</span>
            </div>  
            <div class="c-banner__tagline">
              <span>You&#146;re on the verge of something big.</span>
            </div>
          </div>
          <div class="o-quick-quote">
            <div id="QuickQuoteTitle" class="c-quick-quote__title" runat="server"></div>
          <div class="c-quick-quote__col1">
            <select id="qq_1" class="c-quick-quote__select"> 
              <dnn:MENU MenuStyle="inc/menu/quick-quote" IncludeNodes="#QuoteSelect" runat="server"></dnn:MENU>
            </select>
          </div>
          <div class="c-quick-quote__col2">
            <input id="qq_2" class="c-quick-quote__zip hint" maxlength="10" value="Postal Code" type="text">
          </div>
          <div class="c-quick-quote__col3">
            <div id="saveForm" class="button success expand">Learn More.</div>
          </div> 
          <script>   
            function getQuote(){ 
              location.href = $("#qq_1 option:selected").val() + "#quote/" + $("#qq_2").val();  
            }
            $("#saveForm").click(function () {
              getQuote();
              return false; 
            });
            $("#qq_2").keypress(function(a) { 
              if (a.keyCode == 13) { 
                getQuote();
                return false;
              } 
            });
            $("#qq_2").focus(function(){
              $(this).removeClass("hint").val("");
            });
          </script>
          </div>
        </div>
        <div id="FeatureTop" class="o-feature-pane" runat="server"></div>
      </div>
      <div class="c-homepage-hero__background" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />?dw=1280&tw=1000&mw=800)" data-equalizer-watch>&nbsp;
      <div class="c-homepage-hero__scrim"></div>
      </div>
      <div id="FeatureTopFull" class="o-feature-full-pane" runat="server"></div>
  </section>

  <section role="main">
    <div id="TopPane" class="o-top-pane" runat="server"></div>
    <div class="row">
      <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
      <div id="ContentPane" class="o-content-pane" runat="server"></div>
      
    </div>
    <div id="BottomPane" class="o-bottom-pane" runat="server"></div>
  </section>

  <ar:ContentInfo runat="server" />
</div>

<ar:DropBottom runat="server" />



