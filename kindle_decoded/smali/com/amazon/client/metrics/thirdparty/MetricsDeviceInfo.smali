.class public Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;
.super Ljava/lang/Object;
.source "MetricsDeviceInfo.java"


# instance fields
.field private final mDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDeviceInfoData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device info key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 66
    :cond_1
    const-class v2, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 69
    :cond_2
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 70
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetricsDeviceInfo [mDeviceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->mDeviceInfo:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
