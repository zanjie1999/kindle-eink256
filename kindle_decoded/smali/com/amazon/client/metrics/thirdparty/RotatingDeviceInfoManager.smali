.class public Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;
.super Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;
.source "RotatingDeviceInfoManager.java"


# static fields
.field private static final DEFAULT_EXPIRATION_PERIOD_MILLIS:J = 0x5265c00L

.field private static final LAST_ROTATION_TIME_KEY:Ljava/lang/String; = "lastDSNRotationTime"


# instance fields
.field private mExpirationPeriodMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;-><init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/32 p1, 0x5265c00

    .line 50
    iput-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->mExpirationPeriodMillis:J

    return-void
.end method

.method private ensureSharedPrefsRotationUpToDate()V
    .locals 5

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->getLastRotationTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->mExpirationPeriodMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedDSN:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsDSNKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsSessionIDKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsCustomerIDKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastDSNRotationTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private getLastRotationTime()J
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "lastDSNRotationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCustomerID()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->ensureSharedPrefsRotationUpToDate()V

    .line 88
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->ensureSharedPrefsRotationUpToDate()V

    .line 82
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;->ensureSharedPrefsRotationUpToDate()V

    .line 76
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
