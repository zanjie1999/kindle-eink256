.class Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;
.super Ljava/lang/Object;
.source "UpdateAnnotationTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
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
.field final synthetic this$0:Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;

.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;

    iput-object p2, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 4

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;

    iget-object v3, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v1, v0, p1}, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->access$000(Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;->execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method
