.class Lcom/amazon/device/sync/Sample$2;
.super Ljava/lang/Object;
.source "Sample.java"

# interfaces
.implements Lcom/amazon/device/sync/SyncableDatasetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Sample;->subscribeDatasetUpdates(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/device/sync/SyncableDatasetListener<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Sample;

.field final synthetic val$dataStore:Lcom/amazon/device/sync/SyncableDataStore;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Sample;Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/device/sync/Sample$2;->this$0:Lcom/amazon/device/sync/Sample;

    iput-object p2, p0, Lcom/amazon/device/sync/Sample$2;->val$dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Change<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/device/sync/Sample$2;->val$dataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object p1

    .line 155
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/Conflict;

    .line 157
    invoke-virtual {v0}, Lcom/amazon/device/sync/Conflict;->isCloudDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/Conflict;->getCloud()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/device/sync/Conflict;->getCloud()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method
