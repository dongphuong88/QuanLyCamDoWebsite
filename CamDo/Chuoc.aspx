<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="Chuoc.aspx.cs" Inherits="QuanLy.CamDo.Chuoc" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpreadsheet.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpreadsheet" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="cp" OnCallback="ASPxCallbackPanel1_Callback">
        <PanelCollection>

            <dx:PanelContent runat="server">
                
                <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="3" DataSourceID="SqlDataSourceThongTinDoCam" OnDataBound="ASPxFormLayout1_DataBound">
                    <Items>
                        <dx:LayoutItem FieldName="STT" Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit ID="seSTT" runat="server" Number="0" Caption="STT" DisplayFormatString="0-####" Font-Size="X-Large" ForeColor="Red" Enabled="False" HorizontalAlign="Right">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionStyle ForeColor="Black">
                                        </CaptionStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem>
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="txStatus" ClientInstanceName="txStatus" runat="server" Font-Size="Large" Text="Chuộc" Width="170px" Enabled="False" HorizontalAlign="Right">
                                        <DisabledStyle ForeColor="Red">
                                        </DisabledStyle>
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="" FieldName="NgayCam">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxDateEdit ID="dateNgayCam" runat="server" Caption="Ngày Cầm" EditFormat="Custom" EditFormatString="dd/MM/yyyy" Font-Size="Large" ReadOnly="True" Enabled="False" HorizontalAlign="Right">
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="150px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <DisabledStyle ForeColor="Black">
                                        </DisabledStyle>
                                    </dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxDateEdit ID="dateNgayChuoc" ClientInstanceName="dateNgayChuoc" runat="server" Caption="Ngày Chuộc" DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy" Font-Size="Large" HorizontalAlign="Right">
                                        <ClientSideEvents DateChanged="function(s, e) {
                                            cp.PerformCallback();
}" />
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="150px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                    </dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit ID="seSoNgayCam" runat="server" ClientInstanceName="seSoNgayCam" Caption="Số Ngày Cầm" DisplayFormatString="N0" Font-Size="Large" Number="0" ReadOnly="True" HorizontalAlign="Right" Enabled="False">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="180px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <DisabledStyle ForeColor="Black">
                                        </DisabledStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="" FieldName="SoTienCam">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit ID="seTienCam" runat="server" Caption="Tiền Cầm" DisplayFormatString="{0:N0}.000" Font-Size="Large" Number="0" ReadOnly="True" Enabled="False" HorizontalAlign="Right">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="150px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <DisabledStyle ForeColor="Black">
                                        </DisabledStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="" FieldName="LaiSuatThang">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit ID="seLaiSuat0" runat="server" Caption="Lãi Suất" DisplayFormatString="N2" Font-Size="Large" Number="0" ReadOnly="True" Enabled="False" HorizontalAlign="Right">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="150px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <DisabledStyle ForeColor="Black">
                                        </DisabledStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit ID="seTienLoi0" runat="server" Caption="Tiền Lời" DisplayFormatString="{0:N0}.000" Font-Size="Large" Number="0" ReadOnly="True" HorizontalAlign="Right" EnableClientSideAPI="True">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionCellStyle Width="180px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <DisabledStyle ForeColor="Black">
                                        </DisabledStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem ColSpan="2">
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxSpinEdit runat="server" Number="0" HorizontalAlign="Right" DisplayFormatString="{0:N0}.000" ReadOnly="True" Caption="Tổng Cộng" Font-Size="X-Large" ForeColor="Red" ID="seTongCong" Enabled="False">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <ClientSideEvents ValueChanged="function(s, e) {
	cp.PerformCallback();
}" />
<CaptionSettings VerticalAlign="Middle"></CaptionSettings>

<CaptionCellStyle Width="180px"></CaptionCellStyle>

<CaptionStyle Font-Size="X-Large"></CaptionStyle>
</dx:ASPxSpinEdit>

                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxButton ID="bBack" runat="server" UseSubmitBehavior="false" Font-Size="Large" Height="50px" Text="Quay Lại" Width="100px" OnClick="bBack_Click">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem>
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxButton ID="ASPxFormLayout1_E3" runat="server" UseSubmitBehavior="false" Font-Size="Large" Height="50px" Text="Xác Nhận" Width="200px" OnClick="ConfirmButton_Click">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:ASPxFormLayout>
                <asp:SqlDataSource ID="SqlDataSourceThongTinDoCam" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT [STT], [SoTienCam], [NgayCam], [LaiSuatThang] FROM [RECORDS] WHERE ([STT] = @STT)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="STT" QueryStringField="STT" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </dx:PanelContent>

        </PanelCollection>
    </dx:ASPxCallbackPanel>
    </asp:Content>



