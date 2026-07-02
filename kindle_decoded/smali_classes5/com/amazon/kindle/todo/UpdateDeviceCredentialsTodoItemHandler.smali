.class public Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "UpdateDeviceCredentialsTodoItemHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 38
    sget-object v0, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/UpdateDeviceCredentialsTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->updateDeviceCredentials(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 31
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
