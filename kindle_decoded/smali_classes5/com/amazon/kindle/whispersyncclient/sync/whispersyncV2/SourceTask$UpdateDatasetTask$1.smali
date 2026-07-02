.class Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;
.super Ljava/lang/Object;
.source "SourceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recordsToCommit:Ljava/util/List;

.field final synthetic val$uploadFuture:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;Ljava/util/concurrent/Future;Ljava/util/List;)V
    .locals 0

    .line 119
    iput-object p2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$uploadFuture:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$recordsToCommit:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$uploadFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3c

    .line 129
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeoutException trying to perform uploadFuture.get()in UpdateDatasetTask; recordsToCommit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$recordsToCommit:Ljava/util/List;

    .line 144
    invoke-static {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 137
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException trying to perform uploadFuture.get() in UpdateDatasetTask; recordsToCommit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$recordsToCommit:Ljava/util/List;

    .line 139
    invoke-static {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 132
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException trying to perform uploadFuture.get() in UpdateDatasetTask; recordsToCommit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;->val$recordsToCommit:Ljava/util/List;

    .line 134
    invoke-static {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
