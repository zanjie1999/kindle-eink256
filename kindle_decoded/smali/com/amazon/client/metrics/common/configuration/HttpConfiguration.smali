.class public Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;
.super Ljava/lang/Object;
.source "HttpConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;


# instance fields
.field private final mDelegateHttpConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;->mDelegateHttpConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/common/configuration/internal/NullHttpConfiguration;

    invoke-direct {p1}, Lcom/amazon/client/metrics/common/configuration/internal/NullHttpConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;->mDelegateHttpConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateHttpConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;->mDelegateHttpConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;

    return-object v0
.end method
