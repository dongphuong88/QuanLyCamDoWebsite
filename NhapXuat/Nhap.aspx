﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="Nhap.aspx.cs" Inherits="QuanLy.NhapXuat.Nhap" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <style type="text/css">
        #mainContainer td.buttonCell {
            padding-top: 15px;
        } 
        #mainContainer td.caption {
            padding-right: 5px; 
            padding-top: 4px; 
            vertical-align: top;
        } 
        #mainContainer td.content {
            padding-bottom: 20px;
        }
        #mainContainer td.imagePreviewCell {
            border: solid 2px gray; 
            width: 110px;
            height: 115px;
            /*if IE*/ 
            height:expression("110px");
            text-align: center;
        }
        #mainContainer td.note {
            text-align: left;
            padding-top: 1px;
        }
    </style>
    <script type="text/javascript">
        // <![CDATA[
        function Uploader_OnUploadStart() {
            btnUpload.SetEnabled(false);
        }
        function Uploader_OnFileUploadComplete(args) {
            var imgSrc = aspxPreviewImgSrc;
            if (args.isValid) {
                var date = new Date();
                imgSrc = "UploadImages/" + args.callbackData + "?dx=" + date.getTime();
            }
            getPreviewImageElement().src = imgSrc;
        }
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function UpdateUploadButton() {
            btnUpload.SetEnabled(uploader.GetText(0) != "");
        }
        function getPreviewImageElement() {
            return document.getElementById("previewImage");
        }
        // ]]> 
    </script>
    <table id="mainContainer">
        <tr>
            <td class="content">
                <table>
                    <tr>
                        <td style="padding-right: 20px; vertical-align: top;">
                            <table>
                                <tr>
                                    <td class="caption">
                                        <dx:ASPxLabel ID="lblSelectImage" runat="server" Text="Select Image:">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td>
                                        <dx:ASPxUploadControl ID="uplImage" runat="server" ClientInstanceName="uploader" ShowProgressPanel="True"
                                            NullText="Click here to browse files..." Size="35" OnFileUploadComplete="uplImage_FileUploadComplete">
                                            <ClientSideEvents FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e); }"
                                                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e); }"
                                                FileUploadStart="function(s, e) { Uploader_OnUploadStart(); }"
                                                TextChanged="function(s, e) { UpdateUploadButton(); }"></ClientSideEvents>
                                            <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif">
                                            </ValidationSettings>
                                        </dx:ASPxUploadControl>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="note">
                                        <dx:ASPxLabel ID="lblAllowebMimeType" runat="server" Text="Allowed image types: jpeg, gif"
                                            Font-Size="8pt">
                                        </dx:ASPxLabel>
                                        <br />
                                        <dx:ASPxLabel ID="lblMaxFileSize" runat="server" Text="Maximum file size: 4Mb" Font-Size="8pt">
                                        </dx:ASPxLabel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="buttonCell">
                                        <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="False" Text="Upload" ClientInstanceName="btnUpload"
                                            Width="100px" ClientEnabled="False" style="margin: 0 auto;">
                                            <ClientSideEvents Click="function(s, e) { uploader.Upload(); }" />
                                        </dx:ASPxButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="imagePreviewCell">
                            <img src="../Content/ImagePreview.gif" id="previewImage" alt="" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        // <![CDATA[
        var aspxPreviewImgSrc = getPreviewImageElement().src;
        // ]]> 
    </script>
</asp:Content>



