.class public Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;
.super Ljava/lang/Object;
.source "AmazonPackageLookup.java"


# static fields
.field private static final PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PACKAGE_PREFIX:Ljava/lang/String; = "/system/"

.field public static final THIRD_PARTY_NAME:Ljava/lang/String; = "ThirdPartyApp"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mMyPackageName:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "AmazonPackageLookup"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->SYSTEM_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "system_server"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->SYSTEM_PACKAGES:Ljava/util/Set;

    const-string/jumbo v2, "zygote"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->SYSTEM_PACKAGES:Ljava/util/Set;

    const-string v2, "ath6kl"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.adc"

    const-string v3, "ADC"

    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.venezia"

    const-string v3, "AmazonAppStore"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.avod"

    const-string v3, "AmazonVideo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.mp3"

    const-string v3, "AmazonMp3"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.imdb.mobile"

    const-string v3, "IMDB"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.kindle"

    const-string v3, "Kindle"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.dcp"

    const-string v3, "DCP"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.kindle.otter"

    const-string v3, "Launcher"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.lab126.otter"

    const-string v3, "QuickSettings"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.gardemanger"

    const-string v3, "AppManager"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.kindle.otter.oobe"

    const-string v3, "OOBE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.otter.tutorial"

    const-string v3, "Tutorial"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.kindle.otter.settings"

    const-string v3, "Settings"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.csapp"

    const-string v3, "CSApp"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.windowshop"

    const-string v3, "Shop"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.cloud9"

    const-string v3, "Silk"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.cloud9[AdobeFlash]"

    const-string v3, "SilkFlash"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.cloud9[WebKit]"

    const-string v3, "SilkWebkit"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.alphonso.pulse"

    const-string v3, "Pulse"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.email"

    const-string v3, "Email"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "com.amazon.kindle.facebook"

    const-string v3, "Facebook"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v2, "SystemServer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "/system/bin/mediaserver"

    const-string v2, "MediaServer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.providers.contacts"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    const-string v1, "com.amazon.kindle.unifiedSearch"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mMyPackageName:Ljava/lang/String;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private canonicalizePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ":"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 181
    aget-object p1, v0, p1

    :cond_0
    return-object p1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    return p1

    .line 165
    :cond_0
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method


# virtual methods
.method public generateFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->isTrustedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "ThirdPartyApp"

    return-object p1
.end method

.method public isAmazonPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->canonicalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v1, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mMyPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSystemPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "/system/"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->SYSTEM_PACKAGES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->canonicalizePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {p0, v1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    .line 142
    iget-object v3, p0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 144
    :catch_0
    sget-object v1, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name not found for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "isSystemPackage"

    invoke-virtual {v1, v3, p1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public isTrustedPackage(Ljava/lang/String;)Z
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->isAmazonPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->isSystemPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public packageNameToAmazonFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    sget-object v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->generateFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->PACKAGE_NAME_TO_FRIENDLY_NAME:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
