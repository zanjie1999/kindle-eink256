.class public Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;
.super Ljava/lang/Object;
.source "DownloadStateEvent.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private state:Lcom/audible/mobile/download/service/DownloadingInfo$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/audible/mobile/download/service/DownloadingInfo$State;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->asin:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Lcom/audible/mobile/download/service/DownloadingInfo$State;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-object v0
.end method
