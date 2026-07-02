.class public Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;
.super Ljava/lang/Object;
.source "DownloadProgressRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOAD_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROGRESS_PERCENTAGE_THROTTLE:J = 0x1L


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadUri:Landroid/net/Uri;

.field private lastKnownPercentage:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "TOTAL_BYTES_DOWNLOADED_SO_FAR"

    const-string v1, "TOTAL_BYTES_SIZE"

    const-string v2, "STATUS"

    const-string v3, "STATUS_REASON"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->DOWNLOAD_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->lastKnownPercentage:J

    .line 37
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->downloadUri:Landroid/net/Uri;

    .line 38
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->context:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->downloadStatusCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->downloadUri:Landroid/net/Uri;

    sget-object v3, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->DOWNLOAD_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No download was found for DownloadUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->downloadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TOTAL_BYTES_DOWNLOADED_SO_FAR"

    .line 54
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "TOTAL_BYTES_SIZE"

    .line 55
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "STATUS"

    .line 56
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 59
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 60
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/audible/mobile/downloader/DownloadStatus;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable$1;->$SwitchMap$com$audible$mobile$downloader$DownloadStatus:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 67
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    mul-long v3, v3, v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v3, v5

    .line 68
    iget-wide v5, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->lastKnownPercentage:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 69
    iput-wide v3, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->lastKnownPercentage:J

    .line 70
    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;->downloadStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadProgress(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    throw v1
.end method
