.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;
.super Ljava/lang/Object;
.source "FFRProvisionerSettings.java"


# instance fields
.field private final enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ffrEnabled"

    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;-><init>(Lorg/json/JSONObject;)V

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

    .line 35
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;

    .line 39
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    iget-boolean p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    .line 40
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 41
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 46
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 48
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    const-string v2, "ffrEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRProvisionerSettings;->enabled:Z

    const-string v2, "enabled"

    .line 54
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 55
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
