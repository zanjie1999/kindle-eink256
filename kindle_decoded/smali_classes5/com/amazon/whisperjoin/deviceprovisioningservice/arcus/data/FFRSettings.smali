.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;
.super Ljava/lang/Object;
.source "FFRSettings.java"


# instance fields
.field private final provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "provisioner"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    :goto_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 38
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    .line 42
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    .line 43
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 44
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getProvisionerSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 49
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 51
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "provisioner"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->provisionerSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    const-string/jumbo v2, "provisionerSettings"

    .line 57
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 58
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
