.class Lcom/amazon/device/ads/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Settings$SettingsListener;,
        Lcom/amazon/device/ads/Settings$TransientValue;,
        Lcom/amazon/device/ads/Settings$Value;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Settings"

.field private static final PREFS_NAME:Ljava/lang/String; = "AmazonMobileAds"

.field private static instance:Lcom/amazon/device/ads/Settings;


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation
.end field

.field private debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private listeners:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/amazon/device/ads/Settings$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/amazon/device/ads/Settings;

    invoke-direct {v0}, Lcom/amazon/device/ads/Settings;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/Settings;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/DebugProperties;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Settings;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/Settings;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 57
    iput-object p2, p0, Lcom/amazon/device/ads/Settings;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/Settings;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 549
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/Settings;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method private putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 2

    .line 157
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 159
    iget-object p2, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not set null value for setting: %s"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 164
    iget-boolean p1, p2, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    :cond_1
    return-void
.end method

.method private putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 2

    .line 171
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 173
    iget-object p2, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not set null value for setting: %s"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private writeCacheToSharedPreferences()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method beginFetch(Landroid/content/Context;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/amazon/device/ads/Settings$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$1;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method cacheAdditionalEntries(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v2, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/amazon/device/ads/Settings$Value;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not cache null value for SharedPreferences setting: %s"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method contextReceived(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V

    return-void
.end method

.method fetchSharedPreferences(Landroid/content/Context;)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 612
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V

    .line 616
    iput-object p1, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 617
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 621
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->notifySettingsListeners()V

    return-void
.end method

.method flush()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences()V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-nez p1, :cond_0

    return-object p2

    .line 472
    :cond_0
    iget-object p1, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 460
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-nez p1, :cond_0

    return p2

    .line 382
    :cond_0
    iget-object p1, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-nez p1, :cond_0

    return-wide p2

    .line 421
    :cond_0
    iget-object p1, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 525
    iget-object p1, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    return-object p2
.end method

.method getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "AmazonMobileAds"

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-nez p1, :cond_0

    return-object p2

    .line 343
    :cond_0
    iget-object p1, p1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getWrittenLong(Ljava/lang/String;J)J
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public isSettingsLoaded()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    goto :goto_0

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Interrupted exception while adding listener: %s"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method notifySettingsListeners()V
    .locals 1

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$SettingsListener;

    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 477
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putBooleanWithNoFlush(Ljava/lang/String;Z)V
    .locals 2

    .line 481
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 2

    .line 387
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putIntWithNoFlush(Ljava/lang/String;I)V
    .locals 2

    .line 391
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method public putJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 305
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method public putJSONObjectWithNoFlush(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 310
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putLong(Ljava/lang/String;J)V
    .locals 2

    .line 426
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putLongWithNoFlush(Ljava/lang/String;J)V
    .locals 2

    .line 430
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 348
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 352
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method putTransientBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 485
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method public putTransientObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 509
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    return-void
.end method

.method readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->cacheAdditionalEntries(Ljava/util/Map;)V

    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/Settings$Value;

    if-eqz p1, :cond_0

    .line 533
    iget-boolean p1, p1, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    :cond_0
    return-void
.end method

.method removeWithNoFlush(Ljava/lang/String;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 228
    new-instance v0, Lcom/amazon/device/ads/Settings$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$2;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
