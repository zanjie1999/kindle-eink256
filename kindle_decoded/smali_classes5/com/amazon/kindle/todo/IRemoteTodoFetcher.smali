.class public interface abstract Lcom/amazon/kindle/todo/IRemoteTodoFetcher;
.super Ljava/lang/Object;
.source "IRemoteTodoFetcher.java"


# virtual methods
.method public abstract fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kindle/callback/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            "Lcom/amazon/kcp/application/sync/internal/SyncType;",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/application/models/internal/TodoModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZZ)V
.end method

.method public abstract setMinTodoItemRequestInterval(I)V
.end method
