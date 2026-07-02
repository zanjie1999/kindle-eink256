.class public Lcom/amazon/kcp/reader/ui/Synchronizer;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private syncId:J

.field private final syncListener:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

.field private syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

.field private syncStatusMessage:Ljava/lang/String;

.field private unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/ui/Synchronizer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/Synchronizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->enabled:Z

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->context:Landroid/content/Context;

    .line 87
    new-instance p1, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;-><init>(Lcom/amazon/kcp/reader/ui/Synchronizer;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncListener:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/Synchronizer;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/Synchronizer;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object p1
.end method

.method private checkIfNewMessageIsAvailable()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/sync/SyncMessageManager;->getSyncString(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/application/sync/internal/SyncResult;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncStatusMessage:Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncStatusMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eqz v0, :cond_0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private syncFinished()V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected sync finished result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 171
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->checkIfNewMessageIsAvailable()Z

    .line 172
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->enabled:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncSupportsMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eqz v1, :cond_4

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncListener:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    iget-wide v4, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncId:J

    sget-object v6, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v0, v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v4, v5, v2}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->hideSyncMessage(JZ)V

    :cond_4
    return-void
.end method

.method private syncStarted(Z)V
    .locals 4

    .line 141
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncId:J

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 144
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->enabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->checkIfNewMessageIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncSupportsMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncListener:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->showSyncMessage(Z)V

    :cond_0
    return-void
.end method

.method private syncSupportsMessage()Z
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public initialize(Lcom/amazon/kindle/sync/SynchronizationManager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    return-void
.end method

.method public onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncStarted(Z)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncFinished()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->enabled:Z

    return-void
.end method

.method public setOnSyncMessageListener(Lcom/amazon/kcp/sync/ISyncMessageListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer;->syncListener:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->setListener(Lcom/amazon/kcp/sync/ISyncMessageListener;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 110
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
