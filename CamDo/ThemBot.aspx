<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="ThemBot.aspx.cs" Inherits="QuanLy.CamDo.ThemBot" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpreadsheet.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpreadsheet" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="cp" OnCallback="ASPxCallbackPanel1_Callback">
        <PanelCollection>

            <dx:PanelContent ID="PanelContent1" runat="server">
                
                <dx:ASPxRadioButtonList ID="radioThemBot" runat="server" Font-Size="Large" RepeatDirection="Horizontal" SelectedIndex="0">
                    <Items>
                        <dx:ListEditItem Selected="True" Text="Them" Value="Them" />
                        <dx:ListEditItem Text="Bot" Value="Bot" />
                    </Items>
                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                    cp.PerformCallback('ThemBot');
                    }" />
                </dx:ASPxRadioButtonList>
                
                <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="3" DataSourceID="SqlDataSourceThongTinDoCam" OnDataBound="ASPxFormLayout1_DataBound">
                    <Items>
                        <dx:LayoutItem FieldName="STT" Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server">
                                    <dx:ASPxSpinEdit ID="seThemBot" runat="server" Caption="Tiền Thêm" Font-Size="Large" Number="0" DisplayFormatString="N0" HorizontalAlign="Right">
                                        <Buttons>
                                            <dx:EditButton Enabled="False" Text=".000">
                                            </dx:EditButton>
                                            <dx:EditButton>
                                                <Image IconID="content_checkbox_16x16">
                                                </Image>
                                            </dx:EditButton>
                                        </Buttons>
                                        <ButtonStyle ForeColor="Black">
                                        </ButtonStyle>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <ValidationSettings>
                                            <RegularExpression ErrorText="Giá trị không hợp lệ" ValidationExpression="^[1-9]([0-9]+)?" />
                                        </ValidationSettings>
                                        <CaptionCellStyle Width="180px">
                                        </CaptionCellStyle>
                                        <CaptionStyle Font-Size="Large">
                                        </CaptionStyle>
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <ClientSideEvents ValueChanged="function(s, e) {
	cp.PerformCallback();
}"></ClientSideEvents>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="" FieldName="NgayCam">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer3" runat="server">
                                    <dx:ASPxDateEdit ID="dateNgayCam" runat="server" Caption="Ngày Cầm" EditFormat="Custom" EditFormatString="dd/MM/yyyy" Font-Size="Large" Enabled="False">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer4" runat="server">
                                    <dx:ASPxDateEdit ID="dateNgayChuoc" runat="server" Caption="Ngày" DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy" Font-Size="Large">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer5" runat="server">
                                    <dx:ASPxSpinEdit ID="seSoNgayCam" runat="server" Caption="Số Ngày Cầm" DisplayFormatString="N0" Font-Size="Large" Number="0" HorizontalAlign="Right" Enabled="False">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer6" runat="server">
                                    <dx:ASPxSpinEdit ID="seTienCam" runat="server" Caption="Tiền Cầm" DisplayFormatString="{0:N0}.000" Font-Size="Large" Number="0" Enabled="False" HorizontalAlign="Right">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer7" runat="server">
                                    <dx:ASPxSpinEdit ID="seLaiSuat0" runat="server" Caption="Lãi Suất" DisplayFormatString="N2" Font-Size="Large" Number="0" Enabled="False" HorizontalAlign="Right">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer8" runat="server">
                                    <dx:ASPxSpinEdit ID="seTienLoi" runat="server" Caption="Tiền Lời" DisplayFormatString="{0:N0}.000" Font-Size="Large" Number="0" HorizontalAlign="Right" EnableClientSideAPI="True" ReadOnly="True" Enabled="False">
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
                        <dx:LayoutItem ColSpan="2" Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer10" runat="server">
                                    <dx:ASPxSpinEdit ID="seTienCamAfter" runat="server" Number="0" Caption="Tiền cầm sau khi thay đổi" DisplayFormatString="{0:N0}.000" Font-Size="Large" ForeColor="Red" HorizontalAlign="Right" Enabled="False">
                                        <SpinButtons ShowIncrementButtons="False">
                                        </SpinButtons>
                                        <CaptionSettings VerticalAlign="Middle" />
                                        <CaptionStyle Font-Size="Large" ForeColor="Black">
                                        </CaptionStyle>
                                    </dx:ASPxSpinEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer9" runat="server">
                                    <dx:ASPxSpinEdit runat="server" Number="0" HorizontalAlign="Right" DisplayFormatString="{0:N0}.000" Caption="Tổng Cộng" Font-Size="X-Large" ForeColor="Red" ID="seTongCong" Enabled="False">
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
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer12" runat="server">
                                    <dx:ASPxButton ID="bBack" runat="server" UseSubmitBehavior="false" Font-Size="Large" Height="50px" Text="Quay Lại" Width="100px" OnClick="bBack_Click">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem>
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer13" runat="server">
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



