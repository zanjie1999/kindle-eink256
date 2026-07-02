.class public Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;


# instance fields
.field private final mDelegateHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;->mDelegateHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getDelegateHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;->mDelegateHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    return-object v0
.end method
