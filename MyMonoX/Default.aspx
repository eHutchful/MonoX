<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    MasterPageFile="~/MonoX/MasterPages/Default.master"
    Inherits="MonoSoftware.MonoX.Pages.Default" 
    Title="MonoX - Portal Framework for ASP.NET" 
    Codebehind="Default.aspx.cs" %>
    
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>   
 
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Rss" Src="~/MonoX/ModuleGallery/RssReader.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %> <%--Zona--%>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.ModuleGallery" TagPrefix="ModuleGallery" %>
<%@ Register TagPrefix="MonoX" TagName="AdModule" Src="~/MonoX/ModuleGallery/AdModule.ascx"  %>
<%@ Register TagPrefix="MonoX" TagName="SlideShow" Src="~/MonoX/ModuleGallery/SlideShow.ascx"  %>


<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
<div class="intro-colored-background">
    <div class="intro-background-picture">
        <div class="intro-wrapper">
            <div class="intro-headline">
                <h1>Free ASP.NET <br /> Content Management and Social Networking Platform</h1>
                <p>Build your own community or collaborative workspace using the technology you know.</p>
            </div>
            <div class="intro-image">
                <img id="Img3" src="~/App_Themes/Default/img/banner-image.png" runat="server" />
            </div>
        </div>
    </div>
    <div class="gray-bar"></div>
</div>

<div class="download-wrapper">
    <div class="download-holder">
        <a href="http://monox.mono-software.com/Downloads/#MonoX" onclick="javascript:pageTracker._trackPageview('/Downloads/MonoX.zip');">
            <span>Download MonoX</span>
        </a>
    </div>
</div>

<div id="main-features" class="content-wrapper">

    <div class="home-featured">
        <portal:PortalWebPartZoneTableless ID="topPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" HeaderText='<%$ Code: PageResources.Zone_TopPartZone %>'>
        <ZoneTemplate>
            <MonoX:Editor runat="server" ID="editor2" Title='<%$ Code: PageResources.Title_TopSection %>' DefaultDocumentTitle='<%$ Code: PageResources.Title_TopSection %>'>
                <DefaultContent>

                    <div class="highlited">
                        <div class="highlited-image hl-social"></div>
                        <div class="highlited-text">
                            <h2>Social Networking</h2>
                            <p>MonoX comes with everything you need to build advanced social networks.</p>
                            <a  href="~/MonoX/Pages/Features.aspx?tab=tab-3">Find out more</a>
                        </div>
                    </div>
                    <div class="highlited">
                        <div class="highlited-image hl-content"></div>
                        <div class="highlited-text">
                            <h2>Content Management</h2>
                            <p>MonoX includes very powerful content management functionality.</p>

                            <a  href="~/MonoX/Pages/Features.aspx?tab=tab-2">Find out more</a>

                        </div>
                    </div>
                    <div class="highlited">
                        <div class="highlited-image hl-new"></div>
                        <div class="highlited-text">
                            <h2>What's New</h2>
                            <p>Visit our change log to see what's been added in the recent versions.</p>

                            <a  href="~/ContentPage/ChangeLog/">Find out more</a>

                        </div>
                    </div>

                </DefaultContent>
            </MonoX:Editor>
        </ZoneTemplate>
        </portal:PortalWebPartZoneTableless>
    </div>
</div>


<div id="features-list" class="content-wrapper">
    <portal:PortalWebPartZoneTableless ID="bottomWebPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" HeaderText='<%$ Code: PageResources.Zone_BottomPartZone %>'>
        <ZoneTemplate>
            <MonoX:Editor runat="server" ID="editor1" Title='<%$ Code: PageResources.Title_BottomSection %>' DefaultDocumentTitle='<%$ Code: PageResources.Title_BottomSection %>' >
                <DefaultContent>
                        <div class="featured-box">
                            <a href="~/MonoX/Mobile/Default.aspx">
                                <span class="icon-mobile"></span>
                                <h3>MonoX Mobile</h3>
                                <p>You can go for a responsive design, or build a separate mobile version of your site.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/News.aspx">
                                <span class="icon-news"></span>
                                <h3>News</h3>
                                <p>Quickly and easily present news and updates to your audience.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/SocialNetworking/EventCalendar.aspx">
                                <span class="icon-calendar"></span>
                                <h3>Calendar</h3>
                                <p>Display and organize all kinds of events using an intuitive interface.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/SocialNetworking/Dashboard.aspx">
                                <span class="icon-social"></span>
                                <h3>Social Dashboard</h3>
                                <p>Show the most important social networking features in one place.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/blog/posts/MonoX/">
                                <span class="icon-blog"></span>
                                <h3>Blogs</h3>
                                <p>Install a multi-user blog system with anti-spam protection and support for customization.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/SocialNetworking/Discussion.aspx">
                                <span class="icon-board"></span>
                                <h3>Discussion Boards</h3>
                                <p>Engage in conversation with full support for commenting, voting and moderation.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/SocialNetworking/PhotoGallery.aspx">
                                <span class="icon-gallery"></span>
                                <h3>Media galleries</h3>
                                <p>Host and share videos, photos, resumes, or any other kind of binary attachments.</p>
                            </a>
                        </div>
                        <div class="featured-box">
                            <a href="~/MonoX/Pages/SocialNetworking/Groups.aspx">
                                <span class="icon-groups"></span>
                                <h3>Groups</h3>
                                <p>Allow users to interact with each other around common topics.</p>
                            </a>
                        </div>
                </DefaultContent>    
            </MonoX:Editor>                
        </ZoneTemplate>
    </portal:PortalWebPartZoneTableless>
</div>
    <script type="text/javascript">
        $(document).foundation('orbit', { bullets: false, resume_on_mouseout: true, timer_speed: 5000, animation: 'fade', animation_speed: 250 });
    </script>
</asp:Content>