.class public Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "TodoItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteTodoWebRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;

.field private todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->this$0:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;

    .line 133
    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 134
    iput-object p3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->this$0:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;

    iget-object v1, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
