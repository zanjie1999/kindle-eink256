.class public Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "SyncReadDataCommand.java"


# instance fields
.field private final readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

.field private final syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/sync/IReadDataSyncManager;Lcom/amazon/kcp/application/sync/internal/SyncType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    .line 16
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-void
.end method


# virtual methods
.method protected doExecute()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/IReadDataSyncManager;->cleanSync()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/IReadDataSyncManager;->sync()V

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    return-void
.end method
