.class public Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;
.super Ljava/lang/Object;
.source "TodoItemHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TodoItemHandledEvent"
.end annotation


# instance fields
.field private completionStatus:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

.field private error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private errorCode:Ljava/lang/String;

.field private todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 39
    iput-object p2, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->completionStatus:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 40
    iput-object p3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 41
    iput-object p4, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->errorCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;-><init>(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompletedTodo()Lcom/amazon/kindle/krx/messaging/ITodoItem;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    return-object v0
.end method

.method public getCompletionStatus()Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->completionStatus:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    return-object v0
.end method

.method public getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->error:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
