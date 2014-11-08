<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="ThongKeTienCam.aspx.cs" Inherits="QuanLy.CamDo.ThongKeTienCam" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <table class="OptionsTable BottomMargin">
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Xem theo:" />
            </td>
            <td>
                <dx:ASPxComboBox runat="server" ID="cbGroupInterval" SelectedIndex="0" ValueType="System.String">
                    <Items>
                        <dx:ListEditItem Text="Tháng" Value="DateMonth" />
                        <dx:ListEditItem Text="Năm" Value="DateYear" />
                        <dx:ListEditItem Text="Ngày" Value="Date" />
                    </Items>
                    <ClientSideEvents SelectedIndexChanged="function(s, e) { grid.PerformCallback(s.GetSelectedItem().value) }" />
                </dx:ASPxComboBox>
            </td>
        </tr>
    </table>
    <dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceTienCamView" KeyFieldName="STT" OnCustomCallback="grid_CustomCallback" OnCustomGroupDisplayText="grid_CustomGroupDisplayText" OnCustomUnboundColumnData="grid_CustomUnboundColumnData" Width="100%">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="STT" ReadOnly="True" VisibleIndex="0">
                <PropertiesTextEdit DisplayFormatString="0-####">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tên" FieldName="Ten" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Món Đồ" FieldName="TenTaiSan" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tiền Cầm" FieldName="SoTienCam" VisibleIndex="3">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Ngày Cầm" FieldName="NgayCam" VisibleIndex="4" GroupIndex="0">
                <Settings GroupInterval="DateMonth" />
                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesDateEdit>
            
            </dx:GridViewDataDateColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="SoTienCam" SummaryType="Count" DisplayFormat="Số người cầm: {0}" />
            <dx:ASPxSummaryItem FieldName="SoTienCam" SummaryType="Sum" DisplayFormat="Tổng Cộng: {0:N0}" />
        </TotalSummary>
        <Settings ShowGroupPanel="True" ShowFooter="True" ShowFilterRow="True" VerticalScrollableHeight="400" />
        <GroupSummary>
            <dx:ASPxSummaryItem FieldName="SoTienCam" SummaryType="Count" DisplayFormat="Số người cầm: {0}" />
            <dx:ASPxSummaryItem FieldName="SoTienCam" SummaryType="Sum"  DisplayFormat="Tổng Cộng: {0:N0}.000"/>
        </GroupSummary>
</dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceTienCamView" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [TienCamView]"></asp:SqlDataSource>
    <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Size="Large" Height="50px" OnClick="ASPxButton1_Click" Text="Quay Lại" Width="200px">
    </dx:ASPxButton>
</asp:Content>


