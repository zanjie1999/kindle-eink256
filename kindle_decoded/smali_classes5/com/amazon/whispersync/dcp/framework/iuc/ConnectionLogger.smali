.class public final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;
.super Ljava/lang/Object;
.source "ConnectionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;,
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;,
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$Factory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTHENTICATED_TAG:Ljava/lang/String; = "Auth"

.field private static final METRIC_COMPONENT:Ljava/lang/String; = "Webservice"

.field private static final METRIC_DOMAIN:Ljava/lang/String; = "DCP"


# instance fields
.field private mAttemptCount:I

.field private mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

.field private mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

.field private mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mAttemptCount:I

    .line 133
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    .line 141
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;)V

    return-void
.end method

.method private performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->pushTags()V

    .line 400
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v0, "Unexpected state transition %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-object v3, v3, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    throw p1

    .line 408
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iput-object p2, p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    return-void
.end method

.method private popTags()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->ismWithAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->isWithIdentification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private pushTags()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->isWithIdentification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushThreadLocalTag(Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->ismWithAuthentication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushThreadLocalTag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private successFromResponseCode(I)I
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public logBytesDownloaded(J)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadedBytes:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadedBytes:J

    return-void
.end method

.method public logBytesUploaded(J)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadedBytes:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadedBytes:J

    return-void
.end method

.method public logConnectionAttempt(Ljava/lang/String;)V
    .locals 6

    .line 146
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Handshaking:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 148
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->pushTags()V

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getOriginalUrl()Ljava/net/URL;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v2, "(rewritten from %s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 159
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "%s %s %s (attempt %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v5

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 p1, 0x3

    .line 162
    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mAttemptCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "amzn1.account"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(amzn1\\.account\\.)([A-Z0-9]*)(/*)"

    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "$1XXXX$3"

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    iget p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mAttemptCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mAttemptCount:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    .line 189
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v0, p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 191
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionStartNanos:J

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    throw p1
.end method

.method public logConnectionComplete()V
    .locals 17

    move-object/from16 v1, p0

    .line 288
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->DownloadComplete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Complete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 290
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v2, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionCompleteNanos:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->pushTags()V

    .line 295
    :try_start_0
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-object v2, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionCompleteNanos:J

    .line 297
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->getTotalTimeMillis()J

    move-result-wide v2

    .line 298
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->getHandshakeTimeMillis()J

    move-result-wide v4

    .line 299
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->getUploadTimeMillis()J

    move-result-wide v6

    .line 300
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->getLatencyMillis()J

    move-result-wide v8

    .line 301
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->getDownloadTimeMillis()J

    move-result-wide v10

    .line 303
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v12, "Received response code %d %s. Total time = %d ms. Handshake = %d ms. Upload = %s ms (%d bytes). Latency = %d ms. Download = %s ms (%d bytes)."

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget v15, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-object v15, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseMessage:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-boolean v15, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogUploadTimingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v16, "n/a"

    if-eqz v15, :cond_0

    move-object/from16 v15, v16

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    :goto_0
    aput-object v15, v13, v14

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v14, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadedBytes:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v13, v15

    const/4 v14, 0x6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x7

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-boolean v15, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogDownloadTimingDisabled:Z

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    :goto_1
    aput-object v16, v13, v14

    iget-object v15, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v14, v15, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadedBytes:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    invoke-virtual {v0, v12, v13}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    iget-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 319
    new-instance v12, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    sget-object v13, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    const-string v14, "DCP"

    const-string v15, "Webservice"

    invoke-direct {v12, v13, v14, v15, v0}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v13, "response_code"

    .line 323
    iget-object v14, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget v14, v14, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseCode:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "success"

    .line 324
    iget-object v14, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget v14, v14, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseCode:I

    invoke-direct {v1, v14}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->successFromResponseCode(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "total_time"

    .line 325
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "handshake_time"

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v2, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-boolean v2, v2, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogUploadTimingDisabled:Z

    if-nez v2, :cond_2

    const-string/jumbo v2, "upload_time"

    .line 329
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v2, "upload_size"

    .line 331
    iget-object v3, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v3, v3, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadedBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "latency"

    .line 332
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v2, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-boolean v2, v2, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogDownloadTimingDisabled:Z

    if-nez v2, :cond_3

    const-string v2, "download_time"

    .line 335
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "download_size"

    .line 337
    iget-object v3, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v3, v3, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadedBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v2, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-interface {v2, v12, v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    .line 345
    :cond_4
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$1;)V

    iput-object v0, v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->popTags()V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public logConnectionFailed(Ljava/io/IOException;)V
    .locals 7

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "%s occurred: %s"

    invoke-virtual {v1, p1, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getMetricName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    new-instance v1, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    sget-object v2, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    const-string v5, "DCP"

    const-string v6, "Webservice"

    invoke-direct {v1, v2, v5, v6, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public logConnectionMade()V
    .locals 6

    .line 197
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Handshaking:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Uploading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionMadeNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 201
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->connectionMadeNanos:J

    :cond_0
    return-void
.end method

.method public logDownloadComplete()V
    .locals 6

    .line 258
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Downloading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->DownloadComplete:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 260
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadCompleteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 262
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->downloadCompleteNanos:J

    :cond_0
    return-void
.end method

.method public logDownloadTimingDisabled()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogDownloadTimingDisabled:Z

    .line 253
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logDownloadComplete()V

    return-void
.end method

.method public logResponseReceived(ILjava/lang/String;)V
    .locals 6

    .line 232
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->WaitingForResponse:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Downloading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseReceivedNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 236
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseReceivedNanos:J

    .line 237
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iput p1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseCode:I

    .line 238
    iput-object p2, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->responseMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public logUploadComplete()V
    .locals 6

    .line 222
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->Uploading:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;->WaitingForResponse:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->performStateTransition(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionState;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    iget-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadCompleteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 226
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->uploadCompleteNanos:J

    :cond_0
    return-void
.end method

.method public logUploadTimingDisabled()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->mStatistics:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$ConnectionStatistics;->mLogUploadTimingDisabled:Z

    .line 217
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logUploadComplete()V

    return-void
.end method
