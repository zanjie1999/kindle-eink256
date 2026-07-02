.class Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;
.super Ljava/lang/Object;
.source "UpdateLastPageReadTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    iput-object p2, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    iput-object p3, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 5

    .line 134
    sget-object v0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->TAG:Ljava/lang/String;

    .line 135
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    iget-object v2, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    invoke-virtual {v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    iget-object v1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->updateLastAccessTime(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 142
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    invoke-virtual {p1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->shouldProposeMRPRToUserImmediately()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    iget-object v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->proposeMrprDialog(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;->execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method
