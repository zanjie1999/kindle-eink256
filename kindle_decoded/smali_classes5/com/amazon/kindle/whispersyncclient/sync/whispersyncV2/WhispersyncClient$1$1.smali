.class Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1$1;
.super Ljava/lang/Object;
.source "WhispersyncClient.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uncaught exception on worker thread"

    invoke-static {p1, v0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
