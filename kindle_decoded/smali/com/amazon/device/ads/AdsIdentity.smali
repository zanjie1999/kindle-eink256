.class public Lcom/amazon/device/ads/AdsIdentity;
.super Ljava/lang/Object;
.source "AdsIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;,
        Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;,
        Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;,
        Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_IU_TIME:J = -0x1L

.field private static final LOGTAG:Ljava/lang/String; = "AdsIdentity"


# instance fields
.field private adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

.field private runnableTask:Ljava/lang/Runnable;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdsIdentity;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/device/ads/AdsIdentity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static createAdsIdentityContainer(Landroid/content/Context;Lcom/amazon/device/ads/AuthenticationPlatformAdapter;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 12

    .line 50
    new-instance v9, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v9}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    .line 51
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    .line 52
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v3

    .line 53
    new-instance v2, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    .line 54
    new-instance v10, Lcom/amazon/device/ads/TrustedPackageManager;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/amazon/device/ads/TrustedPackageManager;->getTrustedCerts()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v10, v0, v1, v5}, Lcom/amazon/device/ads/TrustedPackageManager;-><init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/util/Set;)V

    .line 58
    new-instance v11, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;

    .line 59
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v7

    move-object v0, v11

    move-object v1, p1

    move-object v5, v10

    move-object v6, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;-><init>(Lcom/amazon/device/ads/AuthenticationPlatformAdapter;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 60
    new-instance v0, Lcom/amazon/device/ads/AdsIdentity$1;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdsIdentity$1;-><init>()V

    .line 68
    new-instance v1, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;

    invoke-direct {v1, p1}, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;-><init>(Lcom/amazon/device/ads/AuthenticationPlatformAdapter;)V

    .line 69
    new-instance p1, Lcom/amazon/device/ads/AdsIdentity;

    invoke-direct {p1}, Lcom/amazon/device/ads/AdsIdentity;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdsIdentityContainer;->setAdsIdentity(Lcom/amazon/device/ads/AdsIdentity;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 71
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 72
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->setSettings(Lcom/amazon/device/ads/Settings;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 73
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->setConfiguration(Lcom/amazon/device/ads/Configuration;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 74
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->setDebugProperties(Lcom/amazon/device/ads/DebugProperties;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 75
    invoke-virtual {v0, v9}, Lcom/amazon/device/ads/AdsIdentityContainer;->setSystemTime(Lcom/amazon/device/ads/SystemTime;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 76
    invoke-virtual {v0, v11}, Lcom/amazon/device/ads/AdsIdentityContainer;->setUserIdentifier(Lcom/amazon/device/ads/AdsIdentityUserIdentifier;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 77
    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/AdsIdentityContainer;->setTrustedPackageManager(Lcom/amazon/device/ads/TrustedPackageManager;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 78
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdsIdentityContainer;->setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 80
    invoke-static {v0, p2}, Lcom/amazon/device/ads/AdsIdentity;->createIdentifyUserListener(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-object v0
.end method

.method static createIdentifyUserListener(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->setIdentifyUserListener(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;)Lcom/amazon/device/ads/AdsIdentityContainer;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    .line 44
    new-instance v1, Lcom/amazon/device/ads/AmazonOOMAPAdapter;

    invoke-direct {v1}, Lcom/amazon/device/ads/AmazonOOMAPAdapter;-><init>()V

    invoke-virtual {v1, p0}, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AmazonOOMAPAdapter;

    invoke-static {p0, v1, v0}, Lcom/amazon/device/ads/AdsIdentity;->createAdsIdentityContainer(Landroid/content/Context;Lcom/amazon/device/ads/AuthenticationPlatformAdapter;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdsIdentityContainer;

    move-result-object p0

    .line 45
    invoke-static {p0, v0}, Lcom/amazon/device/ads/AdsIdentity;->initialize(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method static initialize(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 3

    .line 93
    invoke-static {p0}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getAdsIdentity()Lcom/amazon/device/ads/AdsIdentity;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getUserIdentifier()Lcom/amazon/device/ads/AdsIdentityUserIdentifier;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getIdentifyUserListener()Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/UserIdentifier;->addIdentifyUserListener(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;)V

    .line 101
    new-instance v1, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;-><init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 103
    new-instance v2, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;-><init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/Configuration$ConfigurationListener;Lcom/amazon/device/ads/AdsIdentity;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 106
    new-instance v1, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;-><init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/Settings$SettingsListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdsIdentity;->setRunnableTask(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentity;->setAdsIdentityContainer(Lcom/amazon/device/ads/AdsIdentityContainer;)V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdsIdentity;->initializeIdentityModule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;)Z
    .locals 6

    .line 159
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, "amzn-ad-iu-last-checkin"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 160
    invoke-static {p0, v4, v5}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/device/ads/Settings;->getWrittenLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 168
    invoke-static {p0, v0, v1}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;J)Z
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getSystemTime()Lcom/amazon/device/ads/SystemTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getConfiguration()Lcom/amazon/device/ads/Configuration;

    move-result-object p0

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/Configuration;->getLong(Lcom/amazon/device/ads/Configuration$ConfigOption;)J

    move-result-wide v2

    add-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method initializeIdentityModule(Landroid/content/Context;)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/amazon/device/ads/AdsIdentity;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity;->runnableTask:Ljava/lang/Runnable;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    :cond_0
    return-void
.end method

.method setAdsIdentityContainer(Lcom/amazon/device/ads/AdsIdentityContainer;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    return-void
.end method

.method setRunnableTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity;->runnableTask:Ljava/lang/Runnable;

    return-void
.end method

.method public shouldIdentifyUser()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-static {v0}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser(Lcom/amazon/device/ads/AdsIdentityContainer;)Z

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdsIdentityContainer;->getDebugProperties()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "debug.shouldIdentifyUser"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
