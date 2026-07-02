.class Lcom/amazon/device/sync/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# static fields
.field private static final MY_ACCOUNT:Ljava/lang/String; = "TEST_ACCOUNT"

.field private static final MY_DATASET:Ljava/lang/String; = "TEST_DATASET"

.field private static final MY_NAMESPACE:Ljava/lang/String; = "TEST_NAMESPACE"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private download(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 238
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 243
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->download()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/device/sync/failures/AccessDeniedException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/device/sync/failures/LocalStoreException;

    :catch_1
    :goto_0
    return-void
.end method

.method private getAllDatasets(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 33
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->openDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataDirectory;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    .line 40
    invoke-direct {p0, v1}, Lcom/amazon/device/sync/Sample;->isDesiredEntry(Lcom/amazon/device/sync/SyncableDatasetInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v1

    .line 43
    invoke-direct {p0, v1}, Lcom/amazon/device/sync/Sample;->workWithMap(Lcom/amazon/device/sync/SyncableStringMap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isDesiredEntry(Lcom/amazon/device/sync/SyncableDatasetInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private subscribeDatasetUpdates(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 132
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/amazon/device/sync/Sample$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/Sample$2;-><init>(Lcom/amazon/device/sync/Sample;Lcom/amazon/device/sync/SyncableDataStore;)V

    const-string v1, "TEST_DATASET"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->subscribeToSyncableStringMap(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Lcom/amazon/device/sync/Subscription;->terminate()V

    return-void
.end method

.method private subscribeDirectoryUpdates(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/amazon/device/sync/Sample$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/Sample$1;-><init>(Lcom/amazon/device/sync/Sample;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->subscribeToDirectory(Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Lcom/amazon/device/sync/Subscription;->terminate()V

    return-void
.end method

.method private synchronize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 178
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 183
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->synchronize()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/device/sync/failures/AccessDeniedException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/device/sync/failures/LocalStoreException;

    :catch_1
    :goto_0
    return-void
.end method

.method private upload(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 208
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 213
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->upload()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/device/sync/failures/AccessDeniedException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/device/sync/failures/LocalStoreException;

    :catch_1
    :goto_0
    return-void
.end method

.method private use(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private workWithMap(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 2

    const-string/jumbo v0, "record2read"

    .line 57
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Sample;->use(Ljava/lang/String;)V

    const-string/jumbo v0, "record2add"

    const-string/jumbo v1, "some value"

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "record2remove"

    .line 60
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private workWithMapConflicts(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap;->getConflicts()Ljava/util/Set;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/Conflict;

    .line 86
    invoke-virtual {v1}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap;->flush()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getDatasetWithName(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TEST_ACCOUNT"

    const-string v1, "TEST_NAMESPACE"

    .line 20
    invoke-static {p1, v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    const-string v0, "MyWellKnownDataset"

    .line 25
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Sample;->workWithMap(Lcom/amazon/device/sync/SyncableStringMap;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Sample;->workWithMapConflicts(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-void
.end method
