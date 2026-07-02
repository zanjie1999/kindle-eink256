.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscriptionManager"


# instance fields
.field private datasetSubscriptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceSubscriptionList:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;)V

    iput-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->namespaceSubscriptionList:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public subscribeToDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/device/sync/SyncableDatasetListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;)V

    .line 91
    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionManager - subscribing from dataset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    invoke-static {p4, p3, p1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p2, p5}, Lcom/amazon/device/sync/SyncableDataStore;->subscribeToSyncableStringMap(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;->add(Ljava/lang/String;Lcom/amazon/device/sync/Subscription;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public subscribeToNamespace(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/device/sync/SyncableDatasetListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "About to subscribe to namespace - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    invoke-static {p3, p2, p1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p2

    .line 65
    iget-object p3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->namespaceSubscriptionList:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    invoke-virtual {p2, p4}, Lcom/amazon/device/sync/SyncableDataStore;->subscribeToDirectory(Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;->add(Ljava/lang/String;Lcom/amazon/device/sync/Subscription;)V

    return-void
.end method

.method public unsubscribeAll()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->namespaceSubscriptionList:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;->removeAll()V

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    .line 119
    invoke-virtual {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;->removeAll()V

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsubscribeToDataset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->datasetSubscriptionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;

    if-eqz v1, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionManager - unsubscribing from dataset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager$SubscriptionRegistry;->removeAndTerminate(Ljava/lang/String;)V

    .line 111
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
