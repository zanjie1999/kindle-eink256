.class Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;
.super Ljava/lang/Object;
.source "AssetGroupProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatus"
.end annotation


# instance fields
.field private byteProgress:J

.field private statusRequired:Z

.field private totalBytes:J


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;ZJJ)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-boolean p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->statusRequired:Z

    .line 332
    iput-wide p3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->totalBytes:J

    .line 333
    iput-wide p5, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->byteProgress:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;ZJJLcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$1;)V
    .locals 0

    .line 325
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;-><init>(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;ZJJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J
    .locals 2

    .line 325
    iget-wide v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;J)J
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->totalBytes:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)Z
    .locals 0

    .line 325
    iget-boolean p0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->statusRequired:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J
    .locals 2

    .line 325
    iget-wide v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->byteProgress:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;J)J
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->byteProgress:J

    return-wide p1
.end method
