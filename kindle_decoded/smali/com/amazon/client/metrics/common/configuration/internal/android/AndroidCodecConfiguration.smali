.class public Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;
.super Ljava/lang/Object;
.source "AndroidCodecConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;


# instance fields
.field private final mDelegateCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;->mDelegateCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    return-void
.end method


# virtual methods
.method public getDelegateCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;->mDelegateCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    return-object v0
.end method
