.class Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;
.super Ljava/lang/Object;
.source "NamesRecordTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->handleAliasChange(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kcp/application/IKindleApplicationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;

.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;

    iput-object p2, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    .line 117
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 120
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v2, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;

    iget-object v3, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-static {v2, v3, v1, v0, p1}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->access$000(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method
