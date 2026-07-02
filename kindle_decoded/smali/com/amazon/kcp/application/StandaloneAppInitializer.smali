.class public Lcom/amazon/kcp/application/StandaloneAppInitializer;
.super Ljava/lang/Object;
.source "StandaloneAppInitializer.java"


# static fields
.field private static final METADATA_KEY_CRASH_IDENTIFIER:Ljava/lang/String; = "crashIdentifier"


# direct methods
.method public static initADAPTLogger()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getFactory()Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getFactory()Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory;-><init>()V

    invoke-static {v0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->setFactory(Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;)V

    :cond_1
    return-void
.end method

.method public static initClientMonitoring(Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetectionHelper;
    .locals 3

    .line 40
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDCMMetricsFactoryProvider()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->getMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->ensureDCMFullyInitialized()V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v0, v2, v1, p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->getInstance()Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;->getCrashIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->getInstance()Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/application/StandaloneAppInitializer$1;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/application/StandaloneAppInitializer$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->appendCrashDetailsCollector(Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    :cond_0
    return-object p0
.end method

.method public static initReaderNotificationsClient(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->register(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/amazon/kcp/notifications/NotificationEventsManager;->getInstance()Lcom/amazon/kcp/notifications/NotificationEventsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kcp/notifications/NotificationEventsManager;->configureRegistrationEvents()V

    return-void
.end method

.method public static initSettingsCache(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/StandaloneAppInitializer$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/StandaloneAppInitializer$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
