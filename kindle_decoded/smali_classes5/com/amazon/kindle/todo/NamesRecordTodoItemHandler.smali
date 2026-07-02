.class public Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "NamesRecordTodoItemHandler.java"


# static fields
.field private static final ALIAS_CHANGED_KEY:Ljava/lang/String; = "AliasChange"

.field private static final DEREGISTER_TITLE:Ljava/lang/String; = "Deregister"

.field private static final SETTING_NAME_IGNORE_REMOTE_DEREGISTER:Ljava/lang/String; = "IgnoreRemoteDeregister"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private final logoutSuccess:Lcom/amazon/foundation/ICallback;

.field private final mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 126
    new-instance v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$2;-><init>(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;)V

    iput-object v0, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    .line 136
    new-instance v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$3;-><init>(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;)V

    iput-object v0, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleAliasChange(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    .line 112
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getDeviceCredentialsURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    .line 111
    invoke-interface {p2, v0, p1, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->updateDeviceCredentials(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method private handleDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LocalTodoQueue"

    const-string v2, "ForceDeregister"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->isIgnoringRemoteDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    sget-object p1, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->TAG:Ljava/lang/String;

    const-string v0, "Deregistration requested via TODO. Ignoring!!!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    iget-object v1, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IRegistrationManager;->deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    :goto_0
    return-void
.end method

.method public static isIgnoringRemoteDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;)Z
    .locals 2

    .line 81
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object p0

    const-string v1, "IgnoreRemoteDeregister"

    .line 84
    invoke-interface {p0, v1, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static setIgnoreRemoteDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;Z)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object p0

    const-string v0, "IgnoreRemoteDeregister"

    .line 92
    invoke-interface {p0, v0, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 56
    sget-object v0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Deregister"

    .line 61
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->handleDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 63
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "AliasChange"

    .line 64
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->handleAliasChange(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO QUEUE: Unknown todo item, removing from server with UNRECOGNIZED and removing locally. Action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->UNRECOGNIZED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

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
