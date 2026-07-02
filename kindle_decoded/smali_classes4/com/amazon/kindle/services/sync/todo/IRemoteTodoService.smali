.class public interface abstract Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;
.super Ljava/lang/Object;
.source "IRemoteTodoService.java"


# virtual methods
.method public abstract processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end method

.method public abstract registerTodoItemHandler(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
.end method

.method public abstract registerTodoItemHandler(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTodoItemHandler(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
.end method
