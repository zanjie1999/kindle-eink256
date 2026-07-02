.class public Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;
.super Ljava/lang/Object;
.source "IDownloadService.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/IDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadStateUpdateEvent"
.end annotation


# instance fields
.field private final curState:Lcom/amazon/kindle/model/content/ContentState;

.field private final download:Lcom/amazon/kindle/services/download/IContentDownload;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->curState:Lcom/amazon/kindle/model/content/ContentState;

    .line 135
    iput-object p2, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->download:Lcom/amazon/kindle/services/download/IContentDownload;

    return-void
.end method


# virtual methods
.method public getDownload()Lcom/amazon/kindle/services/download/IContentDownload;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->download:Lcom/amazon/kindle/services/download/IContentDownload;

    return-object v0
.end method

.method public getDownloadState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->curState:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
