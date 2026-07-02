.class public final Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;
.super Ljava/lang/Object;
.source "ExecutorHelpers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ExecutorHelpers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 1

    .line 20
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 23
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->TAG:Ljava/lang/String;

    const-string v0, "Execution Exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 27
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->TAG:Ljava/lang/String;

    const-string v0, "Interrupted"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
