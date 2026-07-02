.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
.super Ljava/lang/Object;
.source "WhispersyncClient.java"

# interfaces
.implements Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WhispersyncClient"


# instance fields
.field public final EXECUTOR:Ljava/util/concurrent/Executor;

.field private final accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

.field private final context:Landroid/content/Context;

.field private dataStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isConnected:Z

.field private final subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

.field private final syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$1;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    invoke-direct {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    .line 82
    iput-object p2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    .line 83
    iput-object p3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    .line 85
    :try_start_0
    invoke-virtual {p4, p1}, Lcom/amazon/device/sync/SyncInit;->onCreate(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string p2, "SyncInit already initialized by some other component(e.g. FlashCards) ! "

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->handleNamespaceChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->handleDatasetChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->handleDatasetConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    return-void
.end method

.method private doDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableDataStore;

    if-nez v0, :cond_0

    .line 403
    sget-object p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhispersyncClient - Trying to perform delete on an unknown namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Aborting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_0
    new-instance p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    sget-object p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - operation execution exception when trying to delete dataset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance p2, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v0, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 412
    sget-object p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - operation interrupted when trying to delete dataset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p2, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v0, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionInterrupted:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private doRead(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 341
    iget-boolean v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore;

    if-nez v1, :cond_0

    .line 345
    sget-object p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhispersyncClient - Trying to perform update on an unknown namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Aborting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 349
    :cond_0
    new-instance p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$ReadDatasetTask;

    invoke-direct {p1, p2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$ReadDatasetTask;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDataStore;)V

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - operation execution exception when trying to read dataset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance p2, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v0, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 356
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - operation interrupted when trying to read dataset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance p2, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v0, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionInterrupted:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-object v0
.end method

.method private doUpdate(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    const-string v0, " - "

    const/4 v1, 0x0

    .line 369
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 371
    iget-boolean v3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v3, :cond_1

    .line 372
    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore;

    if-nez v2, :cond_0

    .line 375
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WhispersyncClient - Trying to perform update on an unknown namespace "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Aborting..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 380
    :cond_0
    new-instance p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;

    invoke-direct {p2, p1, v2, p4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;Lcom/amazon/device/sync/SyncableDataStore;Z)V

    .line 383
    :try_start_0
    iget-object p4, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    aput-object p3, v2, v1

    invoke-virtual {p2, p4, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 389
    sget-object p4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " operation execution exception for dataset "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-virtual {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-static {p4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object p3, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p2

    .line 385
    sget-object p4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " operation interrupted for dataset "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-virtual {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-static {p4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object p3, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionInterrupted:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1

    .line 395
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private handleDatasetChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 7
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

    .line 448
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    if-nez v0, :cond_0

    .line 449
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "syncUpdateHandler is null; returning from handleDatasetChanges..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/Change;

    .line 457
    new-instance v3, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-virtual {v2}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 459
    invoke-virtual {v2}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;->$SwitchMap$com$amazon$device$sync$Change$Type:[I

    invoke-virtual {v2}, Lcom/amazon/device/sync/Change;->getType()Lcom/amazon/device/sync/Change$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    const-string v5, " on dataset "

    const-string v6, "WhispersyncClient - new/updated record "

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been modified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 476
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;->onUpdate(Ljava/util/List;)V

    .line 477
    iget-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;->onDelete(Ljava/util/List;)V

    return-void
.end method

.method private handleDatasetConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0
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

    return-void
.end method

.method private handleNamespaceChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Change<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    if-nez v0, :cond_0

    .line 423
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "syncUpdateHandler is null; returning from handleNamespaceChanges..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getNamespace()Ljava/lang/String;

    .line 430
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/Change;

    .line 431
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;->$SwitchMap$com$amazon$device$sync$Change$Type:[I

    invoke-virtual {p2}, Lcom/amazon/device/sync/Change;->getType()Lcom/amazon/device/sync/Change$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    invoke-virtual {p2}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;->onDatasetRemove(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncUpdateHandler:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;

    invoke-virtual {p2}, Lcom/amazon/device/sync/Change;->getCurrent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;->onDatasetAdd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private syncDataStore(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 2

    .line 327
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;)V

    .line 330
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - operation execution exception when trying to sync namespace"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 332
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - operation interrupted when trying to sync namespace"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearLocalWhispersyncDataStore()V
    .locals 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableDataStore;->clearLocalStorage(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 166
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string v2, "Unknown exception trying to clear local storage: "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 163
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string v2, "IOException trying to clear local storage: "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect([Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->disconnect()Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 105
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 106
    iget-object v4, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->context:Landroid/content/Context;

    invoke-static {v5, v0, v3}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    iget-object v5, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->context:Landroid/content/Context;

    new-instance v6, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$2;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$2;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)V

    invoke-virtual {v4, v3, v0, v5, v6}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->subscribeToNamespace(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/device/sync/SyncableDatasetListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    .line 154
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhispersyncClient hard deleting records "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->DELETE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->doUpdate(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method

.method public deleteDataset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhispersyncClient - hard deleting dataset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->doDelete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized deregister()V
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->clearLocalWhispersyncDataStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->unsubscribeAll()V

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhispersyncClient - reading dataset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->doRead(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 258
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-nez v0, :cond_0

    .line 259
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string p2, "Not connected, aborting..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->TAG:Ljava/lang/String;

    const-string p2, "Account is null or empty, aborting..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "About to subscribe dataset notifications for namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and dataset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    iget-object v5, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->context:Landroid/content/Context;

    new-instance v6, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$3;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$3;-><init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->subscribeToDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/device/sync/SyncableDatasetListener;)V

    return-void
.end method

.method public declared-synchronized syncAll()V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->dataStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore;

    .line 203
    invoke-direct {p0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncDataStore(Lcom/amazon/device/sync/SyncableDataStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscriptionManager:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SubscriptionManager;->unsubscribeToDataset(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhispersyncClient updating records - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;->UPDATE:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->doUpdate(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$SyncAction;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method
