.class public Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;
.super Ljava/lang/Object;
.source "CodecConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;


# instance fields
.field private final mDelegateCodecConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;->getAndroidCodecConfiguration(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;->mDelegateCodecConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/common/configuration/internal/NullCodecConfiguration;

    invoke-direct {p1}, Lcom/amazon/client/metrics/common/configuration/internal/NullCodecConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;->mDelegateCodecConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;

    :goto_0
    return-void
.end method

.method private getAndroidCodecConfiguration(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method getDelegateCodecConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;->mDelegateCodecConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;

    return-object v0
.end method
