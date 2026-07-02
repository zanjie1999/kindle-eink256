.class final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithConnectivityEnforcement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.iuc.ConnectionEstablisherWithConnectivityEnforcement"


# instance fields
.field private mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mConnectivityTimeoutMs:J

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

.field private final mNetworkType:I

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mWifiManager:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mConnectivityTimeoutMs:J

    .line 60
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mNetworkType:I

    .line 61
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-void
.end method

.method synthetic constructor <init>(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;-><init>(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;)Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->getConnectivityEnforcer()Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    move-result-object p0

    return-object p0
.end method

.method private acquireWifiLock()Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mWifiManager:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->createWifiLock(ILjava/lang/String;)Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->acquire()V

    return-object v0
.end method

.method private createWrapperToReleaseLock(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;)Ljava/net/URLConnection;
    .locals 2

    .line 125
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-object v0
.end method

.method private getConnectivityEnforcer()Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;
    .locals 4

    .line 108
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;-><init>()V

    .line 109
    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mConnectivityTimeoutMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->setWaitForConnectivityTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 110
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->setConnectivityManager(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)V

    .line 111
    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mNetworkType:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->setNetworkType(I)V

    .line 112
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->setContext(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->build()Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    move-result-object v0

    return-object v0
.end method

.method private tryEnforceConnectivity()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WAIT_FOR_CONNECTIVITY:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->acquireWifiLock()Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->tryEnforceConnectivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->createWrapperToReleaseLock(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;)Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object p1

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/NoNetworkException;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/NoNetworkException;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {p1, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->release()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->release()V

    :cond_2
    throw p1
.end method
