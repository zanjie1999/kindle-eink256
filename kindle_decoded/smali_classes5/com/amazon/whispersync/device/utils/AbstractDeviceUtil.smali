.class public abstract Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;
.super Landroid/database/ContentObserver;
.source "AbstractDeviceUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/DeviceUtil;


# static fields
.field private static final DEFAULT_CLICKSTREAM_CUSTOMER_ID:Ljava/lang/String; = "clickstreamCustomerID"

.field private static final DEFAULT_CLICKSTREAM_SESSION_ID:Ljava/lang/String; = "clickstreamSessionID"

.field private static final SHARED_PREF_FILENAME:Ljava/lang/String; = "com.amazon.device.utils"

.field private static final TAG:Ljava/lang/String; = "AbstractDeviceUtil"


# instance fields
.field protected final mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mCustomerID:Ljava/lang/String;

.field private final mFetchCustomerIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mFetchSessionIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mRemoteIP:Ljava/lang/String;

.field private mSessionID:Ljava/lang/String;

.field protected final mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "com.amazon.device.utils"

    .line 52
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 54
    new-instance v1, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;

    invoke-direct {v1}, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;-><init>()V

    iput-object v1, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iget-object v9, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchSessionIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x3e8

    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iget-object v3, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v11, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchCustomerIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;ILjava/security/SecureRandom;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mCustomerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSessionID:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized createCustomerID()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mCustomerID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchCustomerIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$1;-><init>(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createRemoteIp()V
    .locals 1

    const-string v0, "10.0.0.1"

    .line 117
    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized createSessionID()V
    .locals 2

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchSessionIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;-><init>(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createUserAgent()V
    .locals 3

    .line 121
    invoke-interface {p0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 124
    invoke-interface {p0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s:::%s:::%s:::%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mUserAgent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;
    .locals 9

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%dd"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    int-to-double v5, p1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int p1, v5

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fetchCustomerID()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mCustomerID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->createCustomerID()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mCustomerID:Ljava/lang/String;

    return-object v0
.end method

.method public fetchRemoteIP()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->createRemoteIp()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method public fetchSessionID()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->createSessionID()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public fetchUserAgent()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->createUserAgent()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public shutdown()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchSessionIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchSessionIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchCustomerIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mFetchCustomerIDThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "shutdown"

    const-string v2, "Failed to shutdown device util."

    .line 189
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
