.class public Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "DynamicConfigTodoItemHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 30
    sget-object v0, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->loadServerConfigOverrides(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/amazon/kindle/todo/DynamicConfigTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set server dynamicconfig, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 24
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
