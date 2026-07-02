.class public Lcom/amazon/nwstd/utils/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/nwstd/utils/ConcurrentUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/ConcurrentUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFutureResultNoThrow(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 28
    :catch_1
    sget-object p0, Lcom/amazon/nwstd/utils/ConcurrentUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string v1, "InterruptedException thrown as the ExecutorService calling future.get() has been shutdown (using shutdownNow)"

    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
