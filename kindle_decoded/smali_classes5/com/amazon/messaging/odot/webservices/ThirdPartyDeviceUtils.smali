.class public final Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;
.super Ljava/lang/Object;
.source "ThirdPartyDeviceUtils.java"


# static fields
.field private static final SERIAL_NUMBER_NAME:Ljava/lang/String; = "serial.number"

.field private static final TAG:Ljava/lang/String;

.field private static final THIRD_PARTY_DEVICE_STATE_PREFS:Ljava/lang/String; = "dcp.third.party.device.state"

.field private static sSerialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "dcp.third.party.device.state"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "serial.number"

    const/4 v1, 0x0

    .line 36
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    :cond_0
    sget-object p0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized getSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->generateSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    .line 28
    :cond_0
    sget-object p0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCP generated third party serial number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->sSerialNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
