.class public Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;
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
    name = "DownloadStartedStateEvent"
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
