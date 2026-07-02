.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;
.super Ljava/lang/Object;
.source "ArcusSettings.java"


# instance fields
.field private final syncPeriod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "P1D"

    .line 17
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "arcusSyncPeriod"

    const-string v1, "P1D"

    .line 21
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;
    .locals 1

    .line 56
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;-><init>(Lorg/json/JSONObject;)V

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

    .line 32
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    .line 36
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 38
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSyncPeriod()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 45
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

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    const-string v2, "arcusSyncPeriod"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->syncPeriod:Ljava/lang/String;

    const-string/jumbo v2, "syncPeriod"

    .line 51
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 52
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
