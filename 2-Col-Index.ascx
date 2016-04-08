<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropTop" Src="inc/drop-top.ascx" %>
<%@ Register TagPrefix="ar" TagName="DropBottom" Src="inc/drop-bottom.ascx" %>

<ar:DropTop runat="server" />

<div class="page-template page-template-index page-template-2-col">
<ar:Banner runat="server" />

<section class="c-homepage-hero" data-equalizer>
  <div class="row u-full-width">
    <div class="c-homepage-hero__content" data-equalizer-watch>
      <div class="c-quick-quote">
        <div class="row">
          <div id="QuickQuoteTitle" class="c-quick-quote__title" runat="server"></div>
          <div class="c-quick-quote__col1">
            <select id="qq_1" class="c-quick-quote__select"> 
              <dnn:MENU MenuStyle="inc/menu/quickquote" IncludeNodes="#QuoteSelect" runat="server"></dnn:MENU>
            </select>
          </div>
          <div class="c-quick-quote__col2">
            <input id="qq_2" class="c-quick-quote__zip hint" maxlength="5" value="Zip Code" type="text">
          </div>
          <div class="c-quick-quote__col3">
            <div id="saveForm" class="button alert expand">Get a quote</div>
          </div>
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
    <div class="c-homepage-hero__sidebar" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />?dw=1280&tw=1000&mw=800)" data-equalizer-watch>&nbsp;</div>
  </div>
</section>

<section class="c-secondary-hero">
  <div class="row">
    <div class="c-secondary-hero__content">

      <div class="row">

        <dnn:MENU MenuStyle="inc/menu/item-1" IncludeNodes="#SecondaryHero-Item-1" runat="server"></dnn:MENU>
        <dnn:MENU MenuStyle="inc/menu/item-2" IncludeNodes="#SecondaryHero-Item-2" runat="server"></dnn:MENU>

      </div>

    </div>
    <div class="c-secondary-hero__aside">

      <div class="row">

        <dnn:MENU MenuStyle="inc/menu/item-3" IncludeNodes="#SecondaryHero-Item-3" runat="server"></dnn:MENU>
        <dnn:MENU MenuStyle="inc/menu/item-4" IncludeNodes="#SecondaryHero-Item-4" runat="server"></dnn:MENU>

      </div>

    </div>
  </div>
</section>

<section role="main">
  <div id="TopPane" class="o-top-pane" runat="server"></div>
  <div class="row">
    <div id="ContentPane" class="o-content-pane" runat="server"></div>
    <div id="AsidePane" class="o-aside-pane" role="complementary" runat="server"></div>
  </div>
  <div id="BottomPane" class="o-bottom-pane" runat="server"></div>
</section>

<section class="c-carriers">
  <div class="row">
    <div id="CarriersContent" class="c-carriers__content" runat="server"></div>
  </div>
</section>

<section class="c-catch">
  <div class="row">
    <div id="CatchSidebar" class="c-catch__sidebar" runat="server"></div>
    <div id="CatchContent" class="c-catch__content" runat="server"></div>
  </div>
</section>

<ar:ContentInfo runat="server" />
</div>

<ar:DropBottom runat="server" />


