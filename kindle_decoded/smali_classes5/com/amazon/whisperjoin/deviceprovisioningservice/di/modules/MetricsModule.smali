.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;
.super Ljava/lang/Object;
.source "MetricsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDeviceId(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 77
    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "setDeviceId"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 79
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDeviceType(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 62
    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "setDeviceType"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 64
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMetricsDeviceGroup()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method providesAutoDiscoveryMetricsRecorder(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
    .locals 1

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    return-object v0
.end method

.method providesCredentialSyncMetricsRecorder(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;
    .locals 1

    .line 110
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    return-object v0
.end method

.method providesFFSProvisioningServiceMetricsRecorder(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
    .locals 1

    .line 98
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    return-object v0
.end method

.method providesMetricsFactory(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 0

    .line 44
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;->setDeviceType(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;->setDeviceId(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    invoke-static {p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    return-object p1
.end method

.method providesMetricsRecorderProvider(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 2

    .line 87
    new-instance v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v1, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->WJv2Provisioner:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    .line 90
    invoke-interface {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/metrics/MetricsProgramName;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
