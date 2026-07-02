.class public final Lamazon/whispersync/communication/CommunicationFactory;
.super Ljava/lang/Object;


# static fields
.field private static final METRICS_SOURCE:Ljava/lang/String; = "CommunicationFactory"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.CommunicationFactory"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/CommunicationFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method private static checkAndHandleIfInUiThread(Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 5

    invoke-static {}, Lamazon/whispersync/communication/CommunicationFactory;->inUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/communication/utils/StackTraceUtils;->buildSingleLineFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lamazon/whispersync/communication/CommunicationFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "stackTrace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "client called getCommunicationManager in the UI thread"

    invoke-virtual {v1, p0, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "TCommServer"

    const-string v1, "CommunicationFactory"

    invoke-interface {p1, p0, v1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p0

    invoke-interface {p0, v4, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "CountUIThreadInvocation"

    invoke-interface {p0, v2, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    :cond_0
    return-void
.end method

.method public static getCommunicationManager(Landroid/content/Context;)Lamazon/whispersync/communication/CommunicationManager;
    .locals 5

    const-string v0, "getCommunicationManager"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lamazon/whispersync/communication/CommunicationFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "failed to obtain MetricsFactory instance - will use NullMetricsFactory instead"

    invoke-virtual {v2, v0, v1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Lcom/amazon/whispersync/client/metrics/NullMetricsFactory;

    invoke-direct {v1}, Lcom/amazon/whispersync/client/metrics/NullMetricsFactory;-><init>()V

    :cond_0
    invoke-static {v0, v1}, Lamazon/whispersync/communication/CommunicationFactory;->checkAndHandleIfInUiThread(Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V

    const-string v0, "com.amazon.CommunicationManager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamazon/whispersync/communication/CommunicationManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/whispersync/communication/AndroidTCommManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/communication/AndroidTCommManager;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V

    :cond_1
    return-object v0
.end method

.method public static getSrrManager(Landroid/content/Context;)Lamazon/whispersync/communication/srr/SrrManager;
    .locals 3

    const-string v0, "com.amazon.SingleRequestResponseManager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamazon/whispersync/communication/srr/SrrManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lamazon/whispersync/communication/CommunicationFactory;->getCommunicationManager(Landroid/content/Context;)Lamazon/whispersync/communication/CommunicationManager;

    move-result-object p0

    new-instance v0, Lamazon/whispersync/communication/srr/DeviceTCommSrrManager;

    sget-object v1, Lamazon/whispersync/communication/connection/Policy;->ONE_SHOT:Lamazon/whispersync/communication/connection/Policy;

    invoke-direct {v0, p0, v1}, Lamazon/whispersync/communication/srr/DeviceTCommSrrManager;-><init>(Lamazon/whispersync/communication/CommunicationManager;Lamazon/whispersync/communication/connection/Policy;)V

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Unable to get SrrManager implementation"

    aput-object v2, p0, v1

    invoke-static {v0, p0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectNotNull(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static inUIThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
