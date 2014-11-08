<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="Default.aspx.cs" Inherits="QuanLy.MuaBan.Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ClientInstanceName="muaBanForm" AlignItemCaptions="False" AlignItemCaptionsInAllGroups="True">
        <Items>
            <dx:LayoutItem Caption="Loại giao dịch" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxRadioButtonList ID="ASPxFormLayout1_E1" runat="server" Font-Size="Large" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ClientSideEvents SelectedIndexChanged="function(s, e) {
                                switch(s.GetValue())
                                {
                                    case '0':
                                        muaGiaMua.SetValue( mua24K.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                    case '1':
                                        muaGiaMua.SetValue( mua24KKH.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                    case '2':
                                        muaGiaMua.SetValue( mua18K.GetValue());
	                                    muaBanForm.GetItemByName('muaGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                    case '3':
                                        doiGiaBan.SetValue( ban18K.GetValue());
                                        doiGiaMua.SetValue( mua18K.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(true);
                                        break;
                                    case '4':
                                        banGiaBan.SetValue( ban24K.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                    case '5':
                                        banGiaBan.SetValue( ban24KKH.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                    case '6':
                                        banGiaBan.SetValue( ban18K.GetValue());
                                        muaBanForm.GetItemByName('muaGroup').SetVisible(false);
	                                    muaBanForm.GetItemByName('banGroup').SetVisible(true);
	                                    muaBanForm.GetItemByName('doiGroup').SetVisible(false);
                                        break;
                                }
                            }" />
                            <Items>
                                <dx:ListEditItem Text="Mua 24K" Value="0" />
                                <dx:ListEditItem Text="Mua Nữ Trang 24K" Value="1" />
                                <dx:ListEditItem Text="Mua 18K" Value="2" />
                                <dx:ListEditItem Text="Đổi 18K" Value="3" />
                                <dx:ListEditItem Text="Bán 24K" Value="4" />
                                <dx:ListEditItem Text="Bán Nữ Trang 24K" Value="5" />
                                <dx:ListEditItem Text="Bán 18K" Value="6" />
                            </Items>
                        </dx:ASPxRadioButtonList>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutGroup Caption="Mua" ColCount="2" Name="muaGroup">
                <Items>
                    <dx:LayoutItem Caption="Giá Mua" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E2" runat="server" ClientInstanceName="muaGiaMua" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Điều Chỉnh" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E3" runat="server" ClientInstanceName="muaDieuChinh" Font-Size="Large" HorizontalAlign="Right">
                                    
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:EmptyLayoutItem RowSpan="4">
                    </dx:EmptyLayoutItem>
                    <dx:LayoutItem Caption="Trọng Lượng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E4" runat="server" ClientInstanceName="muaTrongLuong" Font-Size="Large" HorizontalAlign="Right" Increment="0.1">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text="chỉ">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tiền Công" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E5" runat="server" ClientInstanceName="muaTienCong" DisplayFormatString="N0" Font-Size="Large" HorizontalAlign="Right">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxButton ID="ASPxFormLayout1_E7" runat="server" Font-Size="Large" Text="Tính" AutoPostBack="False">
                                    <ClientSideEvents Click="function(s, e) {
	muaTongCong.SetValue((muaGiaMua.GetValue()+muaDieuChinh.GetValue())*muaTrongLuong.GetValue()+muaTienCong.GetValue());

}" />
                                </dx:ASPxButton>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tổng Cộng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E6" runat="server" ClientInstanceName="muaTongCong" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="X-Large" ForeColor="Red" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutGroup Caption="Bán" ColCount="2" Name="banGroup">
                <Items>
                    <dx:LayoutItem Caption="Giá Bán" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E8" runat="server" ClientInstanceName="banGiaBan" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Điều Chỉnh" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E9" runat="server" ClientInstanceName="banDieuChinh" Font-Size="Large" HorizontalAlign="Right">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:EmptyLayoutItem RowSpan="3">
                    </dx:EmptyLayoutItem>
                    <dx:LayoutItem Caption="Trọng Lượng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E10" runat="server" ClientInstanceName="banTrongLuong" Font-Size="Large" HorizontalAlign="Right" Increment="0.1">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text="chỉ">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxButton ID="ASPxFormLayout1_E12" runat="server" Font-Size="Large" Text="Tính" AutoPostBack="False">
                                    <ClientSideEvents Click="function(s, e) {
	banTongCong.SetValue( (banGiaBan.GetValue()+banDieuChinh.GetValue())*banTrongLuong.GetValue());
}" />
                                </dx:ASPxButton>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tổng Cộng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E11" runat="server" ClientInstanceName="banTongCong" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="X-Large" ForeColor="Red" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutGroup Caption="Đổi" ColCount="2" Name="doiGroup">
                <Items>
                    <dx:LayoutItem Caption="Giá Mua" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E13" runat="server" ClientInstanceName="doiGiaMua" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Điều Chỉnh" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E14" runat="server" ClientInstanceName="doiMuaDieuChinh" Font-Size="Large" HorizontalAlign="Right">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:EmptyLayoutItem RowSpan="1">
                    </dx:EmptyLayoutItem>
                    <dx:LayoutItem Caption="Trọng Lượng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E15" runat="server" ClientInstanceName="doiMuaTrongLuong" Font-Size="Large" HorizontalAlign="Right" Increment="0.1">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text="chỉ">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    
                    <dx:LayoutItem Caption="Giá Bán" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E17" runat="server" ClientInstanceName="doiGiaBan" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Điều Chỉnh" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E18" runat="server" ClientInstanceName="doiBanDieuChinh" Font-Size="Large" HorizontalAlign="Right">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:EmptyLayoutItem RowSpan="7">
                    </dx:EmptyLayoutItem>
                    <dx:LayoutItem Caption="Trọng Lượng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E19" runat="server" ClientInstanceName="doiBanTrongLuong" Font-Size="Large" HorizontalAlign="Right" Increment="0.1">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text="chỉ">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tiền Công" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E23" runat="server" ClientInstanceName="doiTienCong" Font-Size="Large" HorizontalAlign="Right" Number="0">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxButton ID="ASPxFormLayout1_E22" runat="server" Font-Size="Large" Text="Tính" AutoPostBack="False">
                                    <ClientSideEvents Click="function(s, e) {
	doiTienMua.SetValue( (doiGiaMua.GetValue()+doiMuaDieuChinh.GetValue())*doiMuaTrongLuong.GetValue());
	doiTienBan.SetValue( (doiGiaBan.GetValue()+doiBanDieuChinh.GetValue())*doiBanTrongLuong.GetValue() + doiTienBan.GetValue());
                                        doiTongCong.SetValue( doiTienBan.GetValue() - doiTienMua.GetValue());
}" />
                                </dx:ASPxButton>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    
                    <dx:LayoutItem Caption="Tiền Mua" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E16" runat="server" ClientInstanceName="doiTienMua" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tiền Bán" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E20" runat="server" ClientInstanceName="doiTienBan" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="Large" ForeColor="Black" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tổng Cộng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="ASPxFormLayout1_E21" runat="server" ClientInstanceName="doiTongCong" DisplayFormatString="{0:N0}.000" Enabled="False" Font-Size="X-Large" ForeColor="Red" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
        </Items>
        <ClientSideEvents Init="function(s, e) {
	muaBanForm.GetItemByName('muaGroup').SetVisible(false);
	muaBanForm.GetItemByName('banGroup').SetVisible(false);
	muaBanForm.GetItemByName('doiGroup').SetVisible(false);
}" />
    </dx:ASPxFormLayout>
    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Quay Lại" AutoPostBack="False" Font-Size="Large" UseSubmitBehavior="False">
        <ClientSideEvents Click="function(s, e) {
	location.href = '../';
}" />
    </dx:ASPxButton>
</asp:Content>



