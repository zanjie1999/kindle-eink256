.class Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;
.super Ljava/lang/Object;
.source "WhispersyncClient.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;-><init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhisperSyncClient #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    new-instance p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1$1;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method
