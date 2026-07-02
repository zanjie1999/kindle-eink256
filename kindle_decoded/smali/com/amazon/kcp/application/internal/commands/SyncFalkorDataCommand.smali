.class public Lcom/amazon/kcp/application/internal/commands/SyncFalkorDataCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "SyncFalkorDataCommand.kt"


# instance fields
.field private final falkorSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/sync/FalkorSyncManager;)V
    .locals 1

    const-string v0, "falkorSyncManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/SyncFalkorDataCommand;->falkorSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    return-void
.end method


# virtual methods
.method protected doExecute()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncFalkorDataCommand;->falkorSyncManager:Lcom/amazon/kcp/sync/FalkorSyncManager;

    invoke-interface {v0}, Lcom/amazon/kcp/sync/FalkorSyncManager;->sync()V

    .line 13
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    return-void
.end method
