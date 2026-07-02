.class public Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;
.super Ljava/lang/Object;
.source "SharedPreferencesDeviceConfigurationCache.java"

# interfaces
.implements Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;


# static fields
.field private static final CACHE_KEY_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final DEVICE_CONFIGURATION_SHARED_PREFERENCES:Ljava/lang/String; = "DeviceConfiguration"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ras.uservalidation.cache.SharedPreferencesDeviceConfigurationCache"

.field private static final TIMESTAMP_FIELD:Ljava/lang/String; = "timestamp"

.field private static final TIMEZONE_STRING:Ljava/lang/String; = "UTC"

.field private static final TTL:Ljava/lang/Long;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private final directedId:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->TTL:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceConfiguration"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p1, "UTC"

    .line 36
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->calendar:Ljava/util/Calendar;

    .line 37
    iput-object p2, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->directedId:Ljava/lang/String;

    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->directedId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "timestamp"

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->PROFILE_LINK:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 67
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse profile link from SharedPreferences. ProfileLink: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.ras.uservalidation.cache.SharedPreferencesDeviceConfigurationCache"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isExpired()Z
    .locals 6

    .line 78
    invoke-direct {p0}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->TTL:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceConfiguration(Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :try_start_0
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->PROFILE_LINK:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    .line 99
    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->toJSONString(Lcom/amazon/ras/uservalidation/models/ProfileLink;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid profile link was provided. ProfileLink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.ras.uservalidation.cache.SharedPreferencesDeviceConfigurationCache"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "timestamp"

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/ras/uservalidation/cache/SharedPreferencesDeviceConfigurationCache;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
