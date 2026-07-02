.class public Lcom/audible/mobile/download/service/SimpleDownloadInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "SimpleDownloadInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->Simple:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method
