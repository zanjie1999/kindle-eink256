.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;
.super Landroid/os/AsyncTask;
.source "SourceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncNamespaceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataStore:Lcom/amazon/device/sync/SyncableDataStore;

.field private final whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    .line 194
    iput-object p2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 199
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->isConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WhispersyncClient is not connected. Bailing out of SyncNamespaceTask."

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 209
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->synchronize()Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x3c

    .line 218
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IllegalStateException trying to execute this.dataStore.synchronize() in SyncNamespaceTask: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 235
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeoutException trying to execute syncFuture.get() in SyncNamespaceTask: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 231
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExecutionException trying to execute syncFuture.get() in SyncNamespaceTask: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 227
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterruptedException trying to execute syncFuture.get() in SyncNamespaceTask: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method
