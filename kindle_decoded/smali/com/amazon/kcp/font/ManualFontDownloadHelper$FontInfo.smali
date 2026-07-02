.class public Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;
.super Ljava/lang/Object;
.source "ManualFontDownloadHelper.java"

# interfaces
.implements Lcom/amazon/kcp/font/IFontInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/ManualFontDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

.field private final font:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->font:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 193
    sget-object p1, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object p1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->updateStatus()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;-><init>(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)V

    return-void
.end method


# virtual methods
.method public getDownloadStatusStringId()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/font/DownloadStatus;->getStringId()I

    move-result v0

    return v0
.end method

.method public getFont()Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->font:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    return-object v0
.end method

.method public getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->font:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-static {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->access$000(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public getResourceSizeString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isDefaultFont()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloading()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDownload()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDownloadFailed()V
    .locals 1

    .line 226
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOAD_FAILED:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    return-void
.end method

.method public setDownloading()V
    .locals 1

    .line 222
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    return-void
.end method

.method updateStatus()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->font:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fontFileExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 203
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    :cond_1
    :goto_0
    return-void
.end method
