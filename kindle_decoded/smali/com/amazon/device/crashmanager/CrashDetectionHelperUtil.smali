.class public Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;
.super Ljava/lang/Object;
.source "CrashDetectionHelperUtil.java"


# static fields
.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "CrashDetectionHelper.crashManager3rdParty"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAmazonPackageLookup(Landroid/content/Context;)Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    invoke-direct {v0, p0}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static getAppFileArtifactSource(Landroid/content/Context;Lcom/amazon/device/crashmanager/CrashDetailsAggregator;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)Lcom/amazon/device/crashmanager/AppFileArtifactSource;
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;-><init>(Landroid/content/Context;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    return-object v0
.end method

.method static getCrashDescriptorDedupeUtil(Landroid/content/Context;)Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;
    .locals 2

    const-string v0, "CrashDetectionHelper.crashManager3rdParty"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 37
    new-instance v0, Lcom/amazon/device/crashmanager/utils/CrashDescriptor3rdPartyDedupeUtil;

    invoke-direct {v0, p0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptor3rdPartyDedupeUtil;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method static getCrashDetailsAggregator(Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetailsAggregator;
    .locals 2

    .line 17
    new-instance v0, Lcom/amazon/device/crashmanager/CrashDetailsAggregator;

    invoke-direct {v0}, Lcom/amazon/device/crashmanager/CrashDetailsAggregator;-><init>()V

    .line 18
    new-instance v1, Lcom/amazon/device/crashmanager/CrashDetailsCollector;

    invoke-direct {v1, p0}, Lcom/amazon/device/crashmanager/CrashDetailsCollector;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/CrashDetailsAggregator;->appendCollector(Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    return-object v0
.end method

.method static getDomainChooser(Landroid/content/Context;)Lcom/amazon/device/utils/det/DomainChooser;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/device/crashmanager/ThirdPartyDomainChooser;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/device/crashmanager/ThirdPartyDomainChooser;-><init>(Landroid/content/pm/ApplicationInfo;)V

    return-object v0
.end method

.method static getNetworkManager(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/amazon/device/utils/det/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;

    move-result-object p0

    return-object p0
.end method
