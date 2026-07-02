.class public Lcom/amazon/dcapsmodule/DcapsPlugin;
.super Ljava/lang/Object;
.source "DcapsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "DcapsPlugin"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.dcapsmodule.DcapsPlugin"

.field private static final WEBLAB_EXPERIMENT:Ljava/lang/String; = "DCAPS_LAUNCH"

.field private static final WEBLAB_TREATMENT_ENABLED:Ljava/lang/String; = "T1"

.field private static extraUUID:Ljava/lang/String;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private dcapsClient:Lcom/amazon/kindle/dcaps/DCAPSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method private declared-synchronized initializeDcapsClient()V
    .locals 3

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsPlugin;->dcapsClient:Lcom/amazon/kindle/dcaps/DCAPSClient;

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;

    sget-object v1, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sget-object v1, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/dcaps/DCAPSClient;->getInstance(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;Landroid/content/Context;)Lcom/amazon/kindle/dcaps/DCAPSClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/dcapsmodule/DcapsPlugin;->dcapsClient:Lcom/amazon/kindle/dcaps/DCAPSClient;

    .line 66
    invoke-virtual {v0}, Lcom/amazon/kindle/dcaps/DCAPSClient;->initialize()V

    .line 67
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/dcapsmodule/DcapsPlugin;->TAG:Ljava/lang/String;

    const-string v2, "dcaps library initialized for HDV"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/dcapsmodule/DcapsPlugin;->TAG:Ljava/lang/String;

    const-string v2, "dcaps library initialization avoided for HDV as no user is registered"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/dcapsmodule/DcapsPlugin;->TAG:Ljava/lang/String;

    const-string v2, "dcaps library initialization avoided as it is already initialized"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 40
    sput-object p1, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 41
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/dcapsmodule/DcapsPlugin;->TAG:Ljava/lang/String;

    const-string v1, "dcaps plugin initialize invoked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/amazon/dcapsmodule/DcapsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/amazon/dcapsmodule/DcapsPlugin;->initializeDcapsClient()V

    return-void
.end method

.method public declared-synchronized onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/amazon/dcapsmodule/DcapsPlugin;->initializeDcapsClient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
