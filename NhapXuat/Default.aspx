<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="Default.aspx.cs" Inherits="QuanLy.NhapXuat.Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraReports.v14.1.Web, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDataView" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <script type="text/javascript">
        function AddItem(s, e) {
            dataView.PerformCallback('add');
            ASPxClientEdit.ClearGroup('MonDoGroup');
            
        }
    </script>
    <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" ColCount="4" Width="500px">
        <Items>
            <dx:LayoutItem Caption="Tên món đồ" ColSpan="3" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="txTenMonDo" runat="server" Font-Size="Large" Width="100%" ClientInstanceName="txTenMonDo" MaxLength="30">
                            <ValidationSettings ValidationGroup="MonDoGroup">
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ASPxFormLayout2_E6" runat="server" AutoPostBack="False" Font-Size="Large" Text="In" UseSubmitBehavior="False" OnClick="ASPxFormLayout2_E6_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Trọng lượng" ColSpan="2" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seCanNang" runat="server" DisplayFormatString="N2" Font-Size="Large" HorizontalAlign="Right" Increment="0.1" Number="0">
                            <Buttons>
                                <dx:EditButton Enabled="False" Text="chỉ">
                                </dx:EditButton>
                            </Buttons>
                            <ButtonStyle ForeColor="Black">
                            </ButtonStyle>
                            <ValidationSettings ValidationGroup="MonDoGroup">
                            </ValidationSettings>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Trọng lượng luôn hột" ColSpan="2" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seCanNangNguyenHot" runat="server" DisplayFormatString="N2" Font-Size="Large" HorizontalAlign="Right" Increment="0.1" Number="0">
                            <Buttons>
                                <dx:EditButton Enabled="False" Text="chỉ">
                                </dx:EditButton>
                            </Buttons>
                            <ButtonStyle ForeColor="Black">
                            </ButtonStyle>
                            <ValidationSettings ValidationGroup="MonDoGroup">
                            </ValidationSettings>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Tiền công" ColSpan="2" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seTienCong" runat="server" DisplayFormatString="N0" Font-Size="Large" HorizontalAlign="Right" Number="0">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <Buttons>
                                <dx:EditButton Enabled="False" Text=".000">
                                </dx:EditButton>
                            </Buttons>
                            <ButtonStyle ForeColor="Black" HorizontalAlign="Right">
                            </ButtonStyle>
                            <ValidationSettings ValidationGroup="MonDoGroup">
                            </ValidationSettings>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Hàm lượng vàng" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox ID="dropLoaiVang" runat="server" Font-Size="Large" HorizontalAlign="Right">
                            <Items>
                                <dx:ListEditItem Text="680" Value="680" />
                                <dx:ListEditItem Text="625" Value="625" />
                                <dx:ListEditItem Text="610" Value="610" />
                                <dx:ListEditItem Text="600" Value="600" />
                                <dx:ListEditItem Text="585" Value="585" />
                                <dx:ListEditItem Text="9999" Value="9999" />
                                <dx:ListEditItem Text="985" Value="985" />
                                <dx:ListEditItem Text="980" Value="980" />
                            </Items>
                            <ButtonStyle HorizontalAlign="Right">
                            </ButtonStyle>
                            <ValidationSettings ValidationGroup="MonDoGroup">
                            </ValidationSettings>
                        </dx:ASPxComboBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ASPxFormLayout2_E7" runat="server" AutoPostBack="False" Font-Size="Large" Text="Thêm món đồ" UseSubmitBehavior="False">
                            <ClientSideEvents Click="AddItem" />
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
    <dx:ASPxDataView ID="dataView" runat="server" ClientInstanceName="dataView" OnCustomCallback="dataView_CustomCallback" OnBeforeGetCallbackResult="dataView_BeforeGetCallbackResult" ShowLoadingPanel="False" Width="100%" ForeColor="Black">
        <SettingsTableLayout ColumnCount="1" RowsPerPage="10" />
<PagerSettings EndlessPagingMode="OnClick">
    <Summary Visible="False" />
    <PageSizeItemSettings ShowAllItem="True">
    </PageSizeItemSettings>
        </PagerSettings>
        <ItemTemplate>

            <dx:ASPxLabel ID="lMonDo" runat="server">
            </dx:ASPxLabel>

        </ItemTemplate>
        <ItemStyle Height="0px" />
    </dx:ASPxDataView>
    </asp:Content>



