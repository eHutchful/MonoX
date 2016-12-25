﻿<%@ Control
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="EventModule.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.EventModule" %>
    
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoX" TagName="EventEditor" Src="~/MonoX/ModuleGallery/EventModule/EventEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="SimpleEventView" Src="~/MonoX/ModuleGallery/EventModule/EventSimpleView.ascx" %>

<asp:PlaceHolder ID="plhNoCalendar" runat="server" Visible="false">
    <%= MonoSoftware.MonoX.Resources.EventModuleResources.NoCalendarSelected %>
</asp:PlaceHolder>

<asp:UpdatePanel ID="upEventModule" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
    <div class="event-module-wrapper">
        <asp:PlaceHolder ID="plhEventEditor" runat="server" Visible="false">
            <MonoX:EventEditor ID="ctlEventEditor" runat="server"></MonoX:EventEditor>
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="plhSchedule" runat="server">
            <div class="event-advanced-view">
                <div class="calendar">
                    <asp:PlaceHolder ID="plhAddNewEvent" runat="server">
                        <asp:LinkButton ID="btnNewEvent" runat="server" CssClass="styled-button styled-button-blue create-new"></asp:LinkButton>
                    </asp:PlaceHolder>
                    <div>
                        <telerik:RadCalendar ID="calEvent" runat="server" Skin="MetroTouch">
                        </telerik:RadCalendar>
                    </div>
                </div>
                <div class="scheduler">
                    <telerik:RadScheduler ID="schEvent" runat="server" Height="100%"
                    DataKeyField="Id" DataStartField="StartTime" DataEndField="EndTime" DataSubjectField="Title" DataDescriptionField="Description"
                    Skin="Metro" CssClass="event-scheduler" SelectedView="WeekView">
                    </telerik:RadScheduler>
                </div>
            </div>
            
            <telerik:RadToolTip ID="rttEventDetails" runat="server" IgnoreAltAttribute="true" ShowEvent="FromCode" HideEvent="ManualClose" Position="BottomCenter" RelativeTo="Element" Width="300px">
            </telerik:RadToolTip>
            <div style="display:none">
                <asp:HiddenField ID="fldRefreshParams" runat="server" />
                <asp:Button ID="btnRefresh" runat="server" />
            </div>
        </asp:PlaceHolder>
        
        <asp:PlaceHolder ID="plhSimpleView" runat="server">
            <div class="event-simple-view">
                <div class="new-button-wrapper">
                    <MonoX:StyledButton ID="btnNewSimpleMode" runat="server" CssClass="create-new" />
                </div>
                <MonoX:SimpleEventView ID="ctlSimpleView" runat="server"></MonoX:SimpleEventView>
            </div>
        </asp:PlaceHolder>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
