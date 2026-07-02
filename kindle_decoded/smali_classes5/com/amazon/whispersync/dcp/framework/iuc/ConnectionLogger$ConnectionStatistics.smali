.class final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;
.super Ljava/lang/Object;
.source "ConnectionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionStatistics"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public connectionCompleteNanos:J

.field public connectionMadeNanos:J

.field public connectionStartNanos:J

.field public connectionState:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

.field public downloadCompleteNanos:J

.field public downloadedBytes:J

.field public mLogDownloadTimingDisabled:Z

.field public mLogUploadTimingDisabled:Z

.field public responseCode:I

.field public responseMessage:Ljava/lang/String;

.field public responseReceivedNanos:J

.field public uploadCompleteNanos:J

.field public uploadedBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadTimeMillis()J
    .locals 5

    .line 117
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadCompleteNanos:J

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseReceivedNanos:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandshakeTimeMillis()J
    .locals 5

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionMadeNanos:J

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLatencyMillis()J
    .locals 5

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseReceivedNanos:J

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadCompleteNanos:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTimeMillis()J
    .locals 5

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionCompleteNanos:J

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadTimeMillis()J
    .locals 5

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadCompleteNanos:J

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionMadeNanos:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
