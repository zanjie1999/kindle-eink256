.class public Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;
.super Ljava/lang/Object;
.source "DownloadProgressEvent.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private progressBytes:J

.field private state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field private totalBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLcom/audible/mobile/download/service/DownloadingInfo$State;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->asin:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->progressBytes:J

    .line 37
    iput-wide p4, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->totalBytes:J

    .line 38
    iput-object p6, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressBytes()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->progressBytes:J

    return-wide v0
.end method

.method public final getState()Lcom/audible/mobile/download/service/DownloadingInfo$State;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-object v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->totalBytes:J

    return-wide v0
.end method
