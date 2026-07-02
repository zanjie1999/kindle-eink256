.class public Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;
.super Ljava/lang/Object;
.source "DynamicFontDownloadHelper.java"

# interfaces
.implements Lcom/amazon/kcp/font/IFontInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/DynamicFontDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnDemandFontInfo"
.end annotation


# instance fields
.field private downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

.field private downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 775
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 776
    sget-object p1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object p1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    goto :goto_0

    .line 778
    :cond_0
    sget-object p1, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object p1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    :goto_0
    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/font/DownloadStatus;)Lcom/amazon/kcp/font/DownloadStatus;
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-object p0
.end method


# virtual methods
.method public getDownloadStatusStringId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-object v0
.end method

.method public getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public getResourceSizeString()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$1100(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultFont()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadableFont:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$1200(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z

    move-result v0

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

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

    .line 789
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDownloaded()V
    .locals 1

    .line 811
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    return-void
.end method

.method public setDownloading()V
    .locals 1

    .line 807
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->downloadStatus:Lcom/amazon/kcp/font/DownloadStatus;

    return-void
.end method
