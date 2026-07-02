.class public Lcom/amazon/kindle/todo/RemoteTodoFetcher;
.super Ljava/lang/Object;
.source "RemoteTodoFetcher.java"

# interfaces
.implements Lcom/amazon/kindle/todo/IRemoteTodoFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

.field private static final MAX_RETRY_AFTER_TIME_SECONDS:J = 0x28L

.field private static final METRICS_TAG:Ljava/lang/String;

.field private static final SIDECARS_FIRST_REQUEST_AFTER_WAIT:I = 0x1388

.field private static final SIDECARS_SECOND_REQUEST_AFTER_WAIT:I = 0x4e20

.field private static final TAG:Ljava/lang/String;

.field private static final TODO_FIRST_REQUEST_AFTER_WAIT:I = 0xbb8

.field private static final TODO_FIRST_RETRY:I = 0x1770

.field private static final TODO_MANAGER_DEFAULT_GETITEMS_INTERVAL_MINUTES:I = 0xf

.field private static final TODO_SECOND_RETRY:I = 0xfde8


# instance fields
.field private callAfterHelper:Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

.field private itemsToLookFor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastGetItemsTime:J

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private minTodoItemRequestInterval:I

.field private onTodoSyncComplete:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/application/models/internal/TodoModel;",
            ">;"
        }
    .end annotation
.end field

.field private pendingWebRequest:Lcom/amazon/kindle/webservices/IWebRequest;

.field private final pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sidecarAsinsToLookFor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-class v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    new-instance v1, Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-direct {v1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;-><init>()V

    sput-object v1, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->INSTANCE:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    .line 71
    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->TAG:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->METRICS_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->callAfterHelper:Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->lastGetItemsTime:J

    const/16 v0, 0xf

    .line 91
    iput v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->minTodoItemRequestInterval:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->itemsToLookFor:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->sidecarAsinsToLookFor:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;-><init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)V

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 122
    new-instance v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;-><init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)V

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->onTodoSyncComplete:Lcom/amazon/kindle/callback/ICallback;

    .line 185
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 186
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->pendingWebRequest:Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kindle/webservices/IWebRequest;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->pendingWebRequest:Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->METRICS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/amazon/kindle/todo/RemoteTodoFetcher;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->lastGetItemsTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->itemsToLookFor:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->getMatchingAsinFromSidecarKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->sidecarAsinsToLookFor:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/foundation/internal/IObjectCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/callback/ICallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->onTodoSyncComplete:Lcom/amazon/kindle/callback/ICallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->createRequest(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->callAfterHelper:Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private createRequest(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            "Lcom/amazon/kcp/application/sync/internal/SyncType;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequest;",
            ">;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/application/models/internal/TodoModel;",
            ">;Z)",
            "Lcom/amazon/kindle/webservices/IWebRequest;"
        }
    .end annotation

    move-object v7, p0

    .line 258
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 263
    iget-wide v4, v7, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->lastGetItemsTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    .line 264
    div-long v2, v0, v2

    .line 267
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformTPH()Z

    move-result v0

    .line 282
    invoke-virtual {p2}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getTodoReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object v5

    if-nez v0, :cond_1

    .line 283
    iget-object v0, v7, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->callAfterHelper:Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    .line 284
    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->shouldExecuteRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v7, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->minTodoItemRequestInterval:I

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget-wide v0, v7, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->lastGetItemsTime:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->REGISTRATION:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->BACKGROUND_NOTIFICATION_RECEIVED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NETWORK_CONNECTED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    if-eq v5, v0, :cond_1

    if-eqz p5, :cond_2

    .line 293
    :cond_1
    new-instance v6, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;

    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getRemoveTodoURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v8, Lcom/amazon/kindle/todo/RemoteTodoFetcher$3;

    invoke-direct {v8, p0, v6}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$3;-><init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 320
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getGetItemsURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v9

    .line 322
    new-instance v10, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;

    .line 323
    invoke-virtual {v9}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v2

    .line 325
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v3

    move-object v0, p0

    .line 323
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->getTodoSyncURL(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/models/internal/TodoModel$Reason;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v10

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;-><init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Ljava/lang/String;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/foundation/internal/RemoteTodoContentHandler;Lcom/amazon/kcp/application/sync/internal/SyncType;)V

    .line 388
    invoke-interface {v10, v8}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 389
    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    .line 390
    invoke-virtual {v9}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v0, v3}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    .line 391
    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    return-object v10
.end method

.method public static getInstance()Lcom/amazon/kindle/todo/RemoteTodoFetcher;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->INSTANCE:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    return-object v0
.end method

.method private getMatchingAsinFromSidecarKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->sidecarAsinsToLookFor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTodoSyncURL(Ljava/lang/String;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/models/internal/TodoModel$Reason;)Ljava/lang/String;
    .locals 1

    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "?software_rev="

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, "&device_lto="

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getGMTOffsetInMinutes()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 413
    invoke-interface {p2}, Lcom/amazon/kcp/application/internal/IUpdateManager;->getLatestKnownAppVersion()J

    move-result-wide p1

    const-string p3, "&patch_rev="

    .line 415
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 422
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&os_version="

    .line 423
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&device_model="

    .line 426
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_0

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "&reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 429
    sget-object p2, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->TAG:Ljava/lang/String;

    const-string p3, "Cannot retrieve device information"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 6
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

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->createRequest(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    if-nez p1, :cond_0

    .line 196
    new-instance p1, Lcom/amazon/kindle/callback/OperationResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 197
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 198
    invoke-interface {p4, p1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    return-void

    .line 201
    :cond_0
    new-instance p2, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-direct {p2, p1, p3}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 202
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method public fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZZ)V
    .locals 2

    if-eqz p5, :cond_0

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->sidecarAsinsToLookFor:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding to list of sidecar asins to look for, list length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->sidecarAsinsToLookFor:Ljava/util/List;

    .line 214
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->itemsToLookFor:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding to list of todo items to look for, list length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->itemsToLookFor:Ljava/util/List;

    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 223
    :goto_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;-><init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Lcom/amazon/kcp/application/sync/internal/SyncType;)V

    if-eqz p4, :cond_1

    const-wide/16 p1, 0x1770

    .line 226
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 227
    invoke-virtual {v1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->run()V

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    const-wide/16 p1, 0x1388

    .line 229
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 p1, 0x4e20

    .line 230
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0xbb8

    .line 232
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    const-wide/32 p1, 0xfde8

    .line 233
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :goto_1
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 461
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 462
    iget-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->callAfterHelper:Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->clear()V

    :cond_0
    return-void
.end method

.method public setMinTodoItemRequestInterval(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->minTodoItemRequestInterval:I

    return-void
.end method
