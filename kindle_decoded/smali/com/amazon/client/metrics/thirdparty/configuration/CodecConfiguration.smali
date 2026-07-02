.class public Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;
.super Ljava/lang/Object;
.source "CodecConfiguration.java"


# instance fields
.field final mCodecType:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

.field final mCodecVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->mCodecType:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    .line 22
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->mCodecVersion:Ljava/lang/String;

    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "Codec version is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "CodecType is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCodecType()Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->mCodecType:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    return-object v0
.end method

.method public getCodecVersion()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->mCodecVersion:Ljava/lang/String;

    return-object v0
.end method
