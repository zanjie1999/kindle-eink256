.class public Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;
.super Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;
.source "DSNOverridingDeviceInfoManager.java"


# static fields
.field private static final ANONYMOUS_DSN_NAME:Ljava/lang/String; = "secondaryUUID"

.field private static final SHARED_PERFS_FILENAME:Ljava/lang/String; = "com.amazon.whispersync.client.metrics"

.field private static final TAG:Ljava/lang/String; = "DSNOverridingDeviceInfoManager"

.field protected static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mCachedAnonymousDSN:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;-><init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->fetchAnonymousDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mCachedAnonymousDSN:Ljava/lang/String;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whispersync/device/utils/DeviceUtil;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;-><init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->fetchAnonymousDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mCachedAnonymousDSN:Ljava/lang/String;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fetchAnonymousDeviceSerialNumber()Ljava/lang/String;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.amazon.whispersync.client.metrics"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "secondaryUUID"

    const/4 v3, 0x0

    .line 76
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 78
    sget-object v3, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "DSNOverridingDeviceInfoManager"

    const-string v5, "fetchAnonymousDeviceSerialNumber() - No existing ID found, generating a new UUID"

    invoke-virtual {v3, v4, v5, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v3
.end method


# virtual methods
.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->isDeviceSerialNumberAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DSNOverridingDeviceInfoManager"

    const-string v3, "getDeviceSerialNumber() - returning secondry anonymous DSN"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;->mCachedAnonymousDSN:Ljava/lang/String;

    return-object v0

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
