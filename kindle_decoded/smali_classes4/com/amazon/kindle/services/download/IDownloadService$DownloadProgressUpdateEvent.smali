.class public Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;
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
    name = "DownloadProgressUpdateEvent"
.end annotation


# instance fields
.field private final download:Lcom/amazon/kindle/services/download/IContentDownload;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->download:Lcom/amazon/kindle/services/download/IContentDownload;

    return-void
.end method


# virtual methods
.method public getDownload()Lcom/amazon/kindle/services/download/IContentDownload;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->download:Lcom/amazon/kindle/services/download/IContentDownload;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProgressUpdateEvent{download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->download:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
