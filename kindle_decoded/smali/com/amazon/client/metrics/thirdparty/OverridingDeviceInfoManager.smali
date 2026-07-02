.class public Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;
.super Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;
.source "OverridingDeviceInfoManager.java"


# static fields
.field private static final LEGACY_DEVICE_ID_KEYNAME:Ljava/lang/String; = "secondaryUUID"

.field protected static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected mCachedCustomerID:Ljava/lang/String;

.field protected mCachedDSN:Ljava/lang/String;

.field protected mCachedSessionID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mLegacyDeviceID:Ljava/lang/String;

.field protected mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mSharedPrefsCustomerIDKey:Ljava/lang/String;

.field protected mSharedPrefsDSNKey:Ljava/lang/String;

.field protected mSharedPrefsSessionIDKey:Ljava/lang/String;

.field private final mUseRealDSN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 64
    invoke-direct {p0, p2}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;-><init>(Lcom/amazon/device/utils/thirdparty/DeviceUtil;)V

    .line 65
    iput-boolean p6, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mUseRealDSN:Z

    .line 66
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getOrCreateCustomerIDSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Obtained CustomerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "getOrCreateCustomerIDSharedPref"

    invoke-virtual {v1, v5, v2, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "CID is empty"

    invoke-virtual {v0, v5, v2, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->createCustomerID()Ljava/lang/String;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created CustomerID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v2, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getOrCreateDSNSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->createRandomDSN()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getOrCreateSessionIDSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->createSessionId()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsDSNKey:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsSessionIDKey:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsCustomerIDKey:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "com.amazon.client.metrics"

    .line 167
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 168
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsDSNKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateDSNSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedDSN:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsSessionIDKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateSessionIDSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedSessionID:Ljava/lang/String;

    .line 170
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsCustomerIDKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateCustomerIDSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedCustomerID:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getLegacyDSNSharedPref()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mLegacyDeviceID:Ljava/lang/String;

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getCustomerID()Ljava/lang/String;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->isDeviceSerialNumberAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedCustomerID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getCustomerId"

    const-string v3, "Cached customer id is null. Creating a new one"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsCustomerIDKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateCustomerIDSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedCustomerID:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedCustomerID:Ljava/lang/String;

    return-object v0

    .line 156
    :cond_1
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceInfo()Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 89
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mLegacyDeviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tablet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mLegacyDeviceID:Ljava/lang/String;

    const-string/jumbo v1, "oldDeviceId"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    return-object v0
.end method

.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 4

    .line 120
    iget-boolean v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mUseRealDSN:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->isDeviceSerialNumberAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDeviceSerialNumber"

    const-string v3, "Returning unique device id for non-anonymous metrics"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedDSN:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsDSNKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateDSNSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedDSN:Ljava/lang/String;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedDSN:Ljava/lang/String;

    return-object v0

    .line 137
    :cond_2
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLegacyDSNSharedPref()Ljava/lang/String;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "secondaryUUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->isDeviceSerialNumberAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSessionID"

    const-string v3, "Returning unique session id for non-anonymous metrics"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mSharedPrefsSessionIDKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->getOrCreateSessionIDSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedSessionID:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;->mCachedSessionID:Ljava/lang/String;

    return-object v0

    .line 111
    :cond_1
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
