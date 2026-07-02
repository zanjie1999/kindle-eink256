.class public Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;


# static fields
.field private static final CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mInner:Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

.field private mMetricsTimer:Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->buildAsyncCallback(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->mInner:Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->setMetricTimer(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->mMetricsTimer:Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->mInner:Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    return-object p0
.end method

.method private buildAsyncCallback(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)V

    return-object v0
.end method

.method private setMetricTimer(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->getTimer(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->mMetricsTimer:Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->mMetricsTimer:Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->start()V

    .line 123
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$2;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
