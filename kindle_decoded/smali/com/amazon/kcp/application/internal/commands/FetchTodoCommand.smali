.class public Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "FetchTodoCommand.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kcp/application/models/internal/TodoModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private final remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

.field private final statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private final syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/todo/IRemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 27
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 28
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kcp/application/models/internal/TodoModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->setError(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    return-void
.end method

.method protected doExecute()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/amazon/kindle/todo/IRemoteTodoFetcher;->fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method
