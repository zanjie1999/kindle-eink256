.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;
.super Landroid/os/AsyncTask;
.source "SourceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateDatasetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

.field private final dataStore:Lcom/amazon/device/sync/SyncableDataStore;

.field private final uploadToCloud:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;Lcom/amazon/device/sync/SyncableDataStore;Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->action:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    .line 62
    iput-object p2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    .line 63
    iput-boolean p3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->uploadToCloud:Z

    return-void
.end method

.method private uploadMap(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableStringMap;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->uploadToCloud:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap;->upload()Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 69
    aget-object p1, p1, v2

    if-eqz p1, :cond_5

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 83
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-virtual {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v2

    .line 85
    sget-object v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$1;->$SwitchMap$com$amazon$kindle$whispersyncclient$sync$whispersyncV2$WhispersyncClient$SyncAction:[I

    iget-object v5, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->action:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v0, 0x2

    if-eq v4, v0, :cond_1

    .line 104
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->action:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 97
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 98
    invoke-virtual {v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    .line 101
    invoke-direct {p0, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->uploadMap(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_2

    .line 87
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 88
    invoke-virtual {v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V

    .line 94
    invoke-direct {p0, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->uploadMap(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 119
    :goto_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask$1;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;Ljava/util/concurrent/Future;Ljava/util/List;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown exception trying to update dataset; recordsToCommit - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 151
    invoke-static {}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dataset already deleted or doesn\'t exist; recordsToCommit - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object v1, v3

    :cond_5
    :goto_4
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
