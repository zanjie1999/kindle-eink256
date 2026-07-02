.class public Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;
.super Ljava/lang/Object;
.source "DeviceAttributesSerializer.java"


# static fields
.field public static final APP_VERSION_KEY:Ljava/lang/String; = "appSoftwareVersion"

.field public static final DEVICE_LOCALE_KEY:Ljava/lang/String; = "deviceLocale"

.field public static final DEVICE_TYPE_KEY:Ljava/lang/String; = "deviceType"

.field public static final DIRECTED_ID_KEY:Ljava/lang/String; = "directedId"

.field public static final DSN_KEY:Ljava/lang/String; = "dsn"

.field public static final OPT_IN_SETTINGS_KEY:Ljava/lang/String; = "optInSettings"

.field public static final OS_VERSION_KEY:Ljava/lang/String; = "deviceOsVersion"

.field public static final TIMESTAMP_DEFAULT_VALUE:J = 0x0L

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final TIMEZONE_KEY:Ljava/lang/String; = "timezone"

.field public static final USER_ENABLED_KEY:Ljava/lang/String; = "userEnabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->toJson(Lcom/amazon/reader/notifications/DeviceAttributes;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeUnchecked(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    .locals 2

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serialize(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error generating custom data."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static serializeWithDefaultTimestamp(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 121
    invoke-static {p0, v0}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->toJson(Lcom/amazon/reader/notifications/DeviceAttributes;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Lcom/amazon/reader/notifications/DeviceAttributes;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDsn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSoftwareVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceOsVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDeviceLocale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceLocale"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->isUserEnabled()Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "userEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getTimezone()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timezone"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getTimestamp()J

    move-result-wide v1

    :goto_0
    const-string/jumbo p1, "timestamp"

    .line 61
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "directedId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOptInSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOptInSettings()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "optInSettings"

    .line 75
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
