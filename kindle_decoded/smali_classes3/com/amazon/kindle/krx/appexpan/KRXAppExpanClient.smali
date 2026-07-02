.class public Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;
.super Ljava/lang/Object;
.source "KRXAppExpanClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;


# static fields
.field private static INSTANCE:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient; = null

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.krx.appexpan.KRXAppExpanClient"


# instance fields
.field private eventListener:Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;)Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->eventListener:Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;)Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->eventListener:Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;
    .locals 2

    const-class v0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->INSTANCE:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;-><init>()V

    sput-object v1, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->INSTANCE:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    .line 43
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->INSTANCE:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getResourceSet(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->getResourceSet(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;

    move-result-object p1

    return-object p1
.end method

.method public getResourceSet(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;
    .locals 1

    .line 105
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/AppExpanClient;->getResourceSet(Ljava/lang/String;Z)Lcom/amazon/appexpan/client/ResourceSetResponse;

    move-result-object p1

    .line 108
    new-instance p2, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;-><init>(Lcom/amazon/appexpan/client/ResourceSetResponse;)V

    return-object p2
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;-><init>(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isResourceSetLocal(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/ResourceSetResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/ResourceSet;->getVersion()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public onAppInitializationComplete()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/appexpan/DefaultAppExpanMetricsServiceAdapter;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/appexpan/DefaultAppExpanMetricsServiceAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->setAppExpanMetricsAdapter(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;)V

    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 164
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 165
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient;->allowResourceDownloadsOverWAN(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->sync()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 168
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient;->allowResourceDownloadsOverWAN(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseResourceSet(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->releaseResourceSet(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1

    .line 118
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/AppExpanClient;->retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/appexpan/client/AppExpanClient;->saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public sync()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->sync()V

    return-void
.end method
