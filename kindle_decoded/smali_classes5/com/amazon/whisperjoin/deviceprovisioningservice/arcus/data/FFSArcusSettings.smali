.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
.super Ljava/lang/Object;
.source "FFSArcusSettings.java"


# static fields
.field private static final JSON_STRING_KEY:Ljava/lang/String; = "FFSArcusSettingsJSON"

.field private static final TAG:Ljava/lang/String; = "FFSArcusSettings"


# instance fields
.field private final mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

.field private final mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

.field private final mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

.field private final mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

.field private final mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    .line 47
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    .line 50
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    .line 36
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    .line 37
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    .line 38
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    .line 39
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-direct {p1, p5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "zigbeeSettings"

    .line 113
    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    move-result-object v2

    const-string/jumbo v0, "zeroTouchProvisioningSettings"

    .line 116
    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    move-result-object v3

    const-string/jumbo v0, "throttleSettings"

    .line 119
    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v4

    const-string v0, "frustrationFreeReconnectSettings"

    .line 122
    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    move-result-object v5

    const-string v0, "arcusSettings"

    .line 125
    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 124
    invoke-static {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    move-result-object p0

    .line 127
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->getSyncPeriod()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getJsonObjectOrEmptyObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static readFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 3

    const-string v0, "FFSArcusSettingsJSON"

    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 171
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 4

    const-string v0, "FFSArcusSettingsJSON"

    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 150
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "{}"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    const-string v0, "FFSArcusSettingsJSON"

    .line 160
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed writing to bundle"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 137
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "FFSArcusSettingsJSON"

    .line 138
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 141
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to persist FFSArcusSettings"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 77
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 78
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    .line 79
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    .line 80
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    .line 81
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    .line 82
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArcusSyncPeriod()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->getSyncPeriod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFFRSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    return-object v0
.end method

.method public getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    return-object v0
.end method

.method public getZeroTouchProvisioningSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    return-object v0
.end method

.method public getZigbeeArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

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

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "arcusSettings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "zigbeeSettings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "zeroTouchProvisioningSettings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "throttleSettings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "frustrationFreeReconnectSettings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    const-string v2, "mZigbeeArcusSettings"

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mZeroTouchProvisioningSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    const-string v2, "mZeroTouchProvisioningSettings"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mThrottleSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    const-string v2, "mThrottleSettings"

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mFFRSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFRSettings;

    const-string v2, "mFFRSettings"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->mArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ArcusSettings;

    const-string v2, "mArcusSyncPeriod"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 98
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
