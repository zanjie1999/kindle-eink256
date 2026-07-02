.class public Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;
.super Ljava/lang/Object;
.source "FTUESyncCompletionWaiter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final DEFAULT_WAIT_TOTAL_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;

.field private final lock:Ljava/lang/Object;

.field private waitTimeoutMs:I

.field private waitTotalMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync metadata event received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    if-ne p1, v0, :cond_0

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit p1

    goto :goto_1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :try_start_0
    const-string v4, "ftue_sync_complete"

    .line 50
    invoke-interface {v0, v4}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "FTUE sync is not complete. Waiting (%d seconds so far)."

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 51
    div-int/lit16 v7, v3, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->lock:Ljava/lang/Object;

    iget v6, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->waitTimeoutMs:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :catch_0
    :try_start_2
    iget v4, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->waitTimeoutMs:I

    add-int/2addr v3, v4

    .line 59
    iget v4, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->waitTotalMs:I

    if-lt v3, v4, :cond_0

    const-string v4, "Waited %d seconds for FTUE sync, giving up."

    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "ftue_sync_complete"

    .line 66
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->callback:Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;->onSyncCompleted()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;->callback:Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;->onSyncTimeout()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 64
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
