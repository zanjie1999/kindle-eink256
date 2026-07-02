.class public final Lcom/amazon/kindle/download/DownloadRequestTaskKt;
.super Ljava/lang/Object;
.source "DownloadRequestTask.kt"


# static fields
.field private static final REQUEST_SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const-class v0, Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->REQUEST_SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static final synthetic access$getREQUEST_SEQUENCE$p()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->REQUEST_SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
