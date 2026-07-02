.class public abstract Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;
.super Landroid/database/ContentObserver;
.source "AbstractDeviceUtil.java"

# interfaces
.implements Lcom/amazon/device/utils/thirdparty/DeviceUtil;


# static fields
.field private static final DEFAULT_CLICKSTREAM_CUSTOMER_ID:Ljava/lang/String; = "clickstreamCustomerID"

.field private static final DEFAULT_CLICKSTREAM_SESSION_ID:Ljava/lang/String; = "clickstreamSessionID"

.field private static final SHARED_PREF_FILENAME:Ljava/lang/String; = "com.amazon.device.utils"

.field private static final TAG:Ljava/lang/String; = "AbstractDeviceUtil"

.field private static sCustomerID:Ljava/lang/String;

.field private static sSessionID:Ljava/lang/String;


# instance fields
.field private mRemoteIP:Ljava/lang/String;

.field protected final mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.amazon.device.utils"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createRemoteIp()V
    .locals 1

    const-string v0, "10.0.0.1"

    .line 102
    iput-object v0, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    return-void
.end method

.method private static getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;
    .locals 9

    .line 179
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%dd"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    int-to-double v4, p0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int p0, v4

    sub-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized initializeCustomerID(Landroid/content/SharedPreferences;)V
    .locals 4

    const-class v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "clickstreamCustomerID"

    const/4 v2, 0x0

    .line 114
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    monitor-exit v0

    return-void

    .line 119
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x9

    .line 121
    invoke-static {v2, v1}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;

    .line 122
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "clickstreamCustomerID"

    .line 123
    sget-object v3, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 125
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated a new CustomerId "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized initializeSessionID(Landroid/content/SharedPreferences;)V
    .locals 8

    const-class v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "clickstreamSessionID"

    const/4 v2, 0x0

    .line 133
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 135
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 140
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s-%s-%s"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 141
    invoke-static {v4, v1}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x7

    .line 142
    invoke-static {v6, v1}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v4, 0x2

    .line 143
    invoke-static {v6, v1}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 140
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;

    .line 144
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "clickstreamSessionID"

    .line 145
    sget-object v2, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 147
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated a new SessionID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public fetchCustomerID()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->initializeCustomerID(Landroid/content/SharedPreferences;)V

    .line 87
    :cond_0
    sget-object v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sCustomerID:Ljava/lang/String;

    return-object v0
.end method

.method public fetchRemoteIP()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->createRemoteIp()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method public fetchSessionID()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->initializeSessionID(Landroid/content/SharedPreferences;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->sSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-static {p1, p2}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;->getRandomDigitsUtil(ILjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
