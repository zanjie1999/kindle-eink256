.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;
.super Landroid/os/AsyncTask;
.source "SourceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteDatasetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataStore:Lcom/amazon/device/sync/SyncableDataStore;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 182
    aget-object p1, p1, v0

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;->dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableDataStore;->deleteMap(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
