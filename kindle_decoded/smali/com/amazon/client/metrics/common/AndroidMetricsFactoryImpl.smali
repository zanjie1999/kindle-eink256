.class public Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;
.super Ljava/lang/Object;
.source "AndroidMetricsFactoryImpl.java"


# static fields
.field private static sAndroidMetricsFactoryImpl:Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

.field private static sMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 55
    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->sAndroidMetricsFactoryImpl:Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    invoke-direct {v1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;-><init>()V

    sput-object v1, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->sAndroidMetricsFactoryImpl:Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    .line 57
    invoke-static {p0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p0

    sput-object p0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 60
    :cond_0
    sget-object p0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 52
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Context may not be null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static getMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 1

    .line 70
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {p0, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeviceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p0, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMetricsConfiguration(Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;)V
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {p0}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertMetricsConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-result-object p0

    .line 210
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->setMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOAuthHelper(Landroid/content/Context;Lcom/amazon/client/metrics/common/transport/OAuthHelper;)V
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lcom/amazon/client/metrics/common/transport/internal/android/AndroidOAuthHelperImpl;

    invoke-direct {v1, p1}, Lcom/amazon/client/metrics/common/transport/internal/android/AndroidOAuthHelperImpl;-><init>(Lcom/amazon/client/metrics/common/transport/OAuthHelper;)V

    .line 154
    invoke-static {p0, v1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->setOAuthHelper(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPreferredMarketplace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->setPreferredMarketplace(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
