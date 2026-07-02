.class public Lcom/audible/mobile/download/service/HighResCoverArtImageDownloadInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "HighResCoverArtImageDownloadInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->HighResCoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method
