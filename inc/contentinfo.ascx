<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer class="c-footer" role="contentinfo">
  <div class="row c-footer__top">
    <div class="c-footer__location">
      <div class="c-footer__brand">
        <dnn:LOGO runat="server" />
      </div>
      <div class="c-footer__address">
        <div itemscope itemtype="http://schema.org/LocalBusiness">
          <span itemprop="name">
            <avt:MyTokens runat="server" Token="[RevTemplate:Standard.AgencyName]" />
          </span>
          <span itemprop="description" class="hide">
            <%=PortalSettings.ActiveTab.Description %>
          </span>
          <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
            <span itemprop="streetAddress">
              <avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" />
            </span>
            <br>
            <span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
            <span itemprop="addressRegion">
              <avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" />
            </span>
            <span itemprop="postalCode">
              <avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" />
            </span>
          </div>
          <span itemprop="telephone">
            <a href="tel:<avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></a>
          </span>
        </div>
      </div>
    </div>
    <div class="c-footer__servicecenter">
      <h4>Service Center</h4>
      <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" IncludeNodes="#ServiceCenter" runat="server" ></dnn:Menu>
    </div>
    <div class="c-footer__nav">
      <h4>Learn More</h4>
      <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,1" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
    </div>
  </div>
  <div class="row c-footer__bottom">
    <div class="c-footer__credit">
      <dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> | &copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon.
    </div>
    <div class="c-footer__social">
      <a href="#" target="_blank"><i class="fa fa-facebook"></i></a> 
      <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
      <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
    </div>
  </div>
</footer>
