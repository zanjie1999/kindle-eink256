.class public final Lcom/amazon/device/sync/SyncInit;
.super Ljava/lang/Object;
.source "SyncInit.java"


# static fields
.field private static final FRAMEWORK_INIT:Lcom/amazon/whispersync/dcp/framework/FrameworkInit;

.field private static final TAG:Ljava/lang/String; = "Sync"

.field private static sTransportHelper:Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;


# instance fields
.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mSyncNetworkStateListener:Lcom/amazon/device/sync/SyncNetworkStateListener;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/SyncInit;->FRAMEWORK_INIT:Lcom/amazon/whispersync/dcp/framework/FrameworkInit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransportHelper()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/device/sync/SyncInit;->sTransportHelper:Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;

    return-object v0
.end method

.method private registerSyncUpdateListenerWithConnectivityChangeIntent(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/amazon/device/sync/SyncInit;->mSyncNetworkStateListener:Lcom/amazon/device/sync/SyncNetworkStateListener;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSyncUpdateListenerWithIntents(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncInit;->registerSyncUpdateListenerWithConnectivityChangeIntent(Landroid/content/Context;)V

    return-void
.end method

.method public static registerTransportHelper(Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;)V
    .locals 0

    .line 55
    sput-object p0, Lcom/amazon/device/sync/SyncInit;->sTransportHelper:Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/amazon/device/sync/SyncInit;->FRAMEWORK_INIT:Lcom/amazon/whispersync/dcp/framework/FrameworkInit;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->onCreate(Landroid/content/Context;)V

    .line 34
    invoke-static {p1, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/amazon/device/sync/SyncInit;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "Sync"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushTag(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isDCMFor3PSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isMapR5Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;

    invoke-direct {v0}, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;-><init>()V

    .line 44
    invoke-static {p1, v0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->setMetricsConfig()V

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/sync/Synchronizer;->initialize(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncInit;->registerSyncUpdateListenerWithIntents(Landroid/content/Context;)V

    return-void
.end method
