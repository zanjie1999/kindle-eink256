.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;
.super Ljava/lang/Object;
.source "ZigbeeSyncResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SHARED_PREF_TIMESTAMP:Ljava/lang/String; = "zigbeeSyncResultTimestamp"

.field private static final SHARED_PREF_ZIGBEE_ENTRY_JSON:Ljava/lang/String; = "zigbeeSyncResultEntryJSON"


# instance fields
.field private final mTimestamp:J

.field private final mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    .line 27
    iput-wide p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    return-void
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;
    .locals 5

    const-string/jumbo v0, "zigbeeSyncResultEntryJSON"

    .line 62
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 67
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v3, "{}"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->fromJson(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    move-result-object v0

    const-string/jumbo v1, "zigbeeSyncResultTimestamp"

    const-wide/16 v3, 0x0

    .line 68
    invoke-interface {p0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 69
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-direct {p0, v0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 77
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "zigbeeSyncResultEntryJSON"

    .line 78
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->getZigbeeFFSEntry()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "zigbeeSyncResultTimestamp"

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "An error occurred while persisting ZigbeeEntry"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    .line 51
    iget-wide v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    iget-wide v5, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    .line 52
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    return-wide v0
.end method

.method public getZigbeeFFSEntry()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 40
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mZigbeeFFSEntry:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    const-string v2, "mZigbeeFFSEntry"

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->mTimestamp:J

    const-string v3, "mTimestamp"

    .line 42
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 43
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
