<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer role="contentinfo">
  <div class="c-footer-top row">
    <div class="c-footer-top__tagline">
      <div class="c-footer-top__text">
        <div class="c-footer-top__1">Discover your new</div>
        <div class="c-footer-top__2">beginning today!</div>
      </div>
      <div class="c-footer-top__button">
        <a class="button success" href="/business">Learn More.</a>
      </div>
    </div>
    <div class="c-footer-top__scrim"></div>
  </div>
  <div class="c-footer-bottom row full-width">
    <div class="c-footer-bottom__menu">
      <h4>Need More?</h4>
      <ul>
        <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
      </ul>
    </div>
    <div class="c-footer-bottom__contact">
      <h4>Get in Touch</h4>
      <p class="c-footer-bottom__phone">Call Us: <a href="tel:<avt:MyTokens runat='server' token='[RevTemplate:Standard.LocalNumber]' />"><avt:MyTokens runat='server' token='[RevTemplate:Standard.LocalNumber]' /></a></p>
      <div class="c-footer-bottom__address" itemscope itemtype="http://schema.org/LocalBusiness">
        <span itemprop="name" class="c-footer-bottom__name"><%=PortalSettings.PortalName %></span>
        <span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
        <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
          <span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span>
          <br/>
          <span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
          <span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
          <span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
        </div>
        <a href="#"><i class="fa fa-facebook"></i></a> 
        <a href="#"><i class="fa fa-linkedin"></i></a>
      </div>
    </div>
    <div class="c-footer-bottom__line">
      <span class="c-footer-bottom__signin"><dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> |</span><span class="c-footer-bottom__copyright">&copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon</span>
    </div>
  </div>
</footer>
