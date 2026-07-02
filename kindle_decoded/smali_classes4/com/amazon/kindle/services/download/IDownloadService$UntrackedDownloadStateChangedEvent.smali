.class public Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;
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
    name = "UntrackedDownloadStateChangedEvent"
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final contentState:Lcom/amazon/kindle/model/content/ContentState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;->bookId:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;->contentState:Lcom/amazon/kindle/model/content/ContentState;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;->contentState:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
