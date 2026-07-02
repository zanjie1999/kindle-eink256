.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningSettings.java"


# instance fields
.field private final mEnablePhilpsBLEWorkflow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;
    .locals 2

    const-string v0, "enablePhilipsBleWorkflow"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 50
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 32
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    .line 33
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    iget-boolean p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPhilipsBLEWorkflowEnabled()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    const-string v2, "enablePhilipsBleWorkflow"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->mEnablePhilpsBLEWorkflow:Z

    const-string v2, "mEnablePhilpsBLEWorkflow"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 45
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
