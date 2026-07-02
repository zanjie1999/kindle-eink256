.class public Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;
.super Ljava/lang/Object;
.source "OneTapBookOpenDebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;
    }
.end annotation


# static fields
.field private static final ONE_TAP_BOOK_OPEN_SETTINGS:Ljava/lang/String; = "OneTapBookOpenSettings"

.field private static holdOneTapSplashUntilCoverTapped:Z = false

.field private static isEarlySidecarDownloadEnabled:Z = false

.field private static isOneTapBookOpenAllEnabled:Z = false

.field private static isOneTapBookOpenBiBBEnabled:Z = false

.field private static isOneTapBookOpenHomeEnabled:Z = false

.field private static isOneTapBookOpenLibraryEnabled:Z = false

.field private static isOneTapBookOpenSDPDisabled:Z = false

.field private static isOneTapBookOpenSearchDisabled:Z = false

.field private static isOneTapBookOpenSearchOnFOSEnabled:Z = false

.field private static isOneTapEndActionsExpandoEnabled:Z = false

.field private static isOneTapEndActionsNISEnabled:Z = false

.field private static progressBarUpdateAnimationMs:J = 0x0L

.field private static progressInterpolationType:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType; = null

.field private static simulateUnfetchedCover:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->LINEAR:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    sput-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressInterpolationType:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    const-wide/16 v0, 0xfa

    .line 70
    sput-wide v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressBarUpdateAnimationMs:J

    return-void
.end method

.method public static getProgressBarUpdateAnimationMs()J
    .locals 2

    .line 358
    sget-wide v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressBarUpdateAnimationMs:J

    return-wide v0
.end method

.method public static getProgressInterpolationType()Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;
    .locals 1

    .line 350
    sget-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressInterpolationType:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    return-object v0
.end method

.method public static initDebugValues(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OneTapBookOpenSettings"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 75
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled:Z

    const-string v1, "EnableOneTapAll"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled:Z

    .line 76
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled:Z

    const-string v1, "EnableOneTapLibrary"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled:Z

    .line 77
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled:Z

    const-string v1, "EnableOneTapHome"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled:Z

    .line 78
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchDisabled:Z

    const-string v1, "DisableOneTapSearch"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchDisabled:Z

    .line 79
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchOnFOSEnabled:Z

    const-string v1, "EnableOneTapSearchFOS"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchOnFOSEnabled:Z

    .line 80
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPDisabled:Z

    const-string v1, "DisableOneTapSDP"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPDisabled:Z

    .line 81
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    const-string v1, "EnableOneTapEndActionsNIS"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    .line 82
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    const-string v1, "EnableOneTapEndActionsExpando"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    .line 83
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled:Z

    const-string v1, "EnableOneTapBiBB"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled:Z

    .line 84
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->holdOneTapSplashUntilCoverTapped:Z

    const-string v1, "EnableHoldingOneTapSplashScreen"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->holdOneTapSplashUntilCoverTapped:Z

    .line 85
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCover:Z

    const-string v1, "SimulateUnfetchedCoverImage"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCover:Z

    .line 86
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled:Z

    const-string v1, "EnableEarlySidecarDownload"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled:Z

    return-void
.end method

.method public static isEarlySidecarDownloadEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 1

    .line 345
    invoke-static {p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isExcludedBuild()Z
    .locals 1

    .line 317
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isFOS5Devices()Z
    .locals 3

    .line 287
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getFireOSVersion()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v1, "5"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOneTapBookOpenAllEnabled()Z
    .locals 1

    .line 159
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled:Z

    return v0
.end method

.method public static isOneTapBookOpenBiBBEnabled()Z
    .locals 1

    .line 271
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled:Z

    return v0
.end method

.method public static isOneTapBookOpenHomeEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 2

    .line 176
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isFOS5Devices()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isThirdPartyBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled:Z

    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_HOME_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const-string v1, "T1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 184
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabledForFOS(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isOneTapBookOpenLibraryEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 2

    .line 163
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 170
    :cond_1
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled:Z

    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_LIBRARY_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const-string v1, "T1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabled(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isOneTapBookOpenSDPEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 1

    .line 224
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isExcludedBuild()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 228
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPDisabled:Z

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isOneTapBookOpenSearchEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 2

    .line 190
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchEnabledOnFOS(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p0

    return p0

    .line 198
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 200
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 203
    :cond_3
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchDisabled:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public static isOneTapBookOpenSearchEnabledOnFOS(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 2

    .line 208
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isFOS5Devices()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 217
    :cond_2
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchOnFOSEnabled:Z

    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_SEARCH_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const-string v1, "T1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabledForFOS(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static isOneTapEnabled(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 325
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOneTapEnabledForFOS(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOneTapEndActionsExpandoEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 2

    .line 250
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isFOS5Devices()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 258
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p0

    const-string v0, "T1"

    if-eqz p0, :cond_2

    .line 260
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabledForFOS(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0

    .line 265
    :cond_2
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    sget-object v1, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_END_ACTIONS_EXPANDO_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabled(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isOneTapEndActionsNISEnabled(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 3

    .line 232
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->COMICS_ONE_TAP_CX_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    const-string v1, "T1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 232
    invoke-static {p0, v0, v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapWeblabEnabledForComics(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 237
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isFOS5Devices()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 241
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isThirdPartyBuild()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    sget-boolean p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->ONE_TAP_CX_FOS_END_ACTIONS_NIS_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 245
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEnabledForFOS(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method static isOneTapWeblabEnabledForComics(ZLcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "OneTapBookOpenSettings"

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 93
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setProgressBarUpdateAnimationMs(J)V
    .locals 0

    .line 362
    sput-wide p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressBarUpdateAnimationMs:J

    return-void
.end method

.method public static setProgressInterpolationType(Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;)V
    .locals 0

    .line 354
    sput-object p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->progressInterpolationType:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    return-void
.end method

.method public static shouldDimLibraryCover(ZZLcom/amazon/kcp/application/Marketplace;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 283
    invoke-static {p2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static shouldHoldOneTapSplashUntilCoverTapped()Z
    .locals 1

    .line 274
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->holdOneTapSplashUntilCoverTapped:Z

    return v0
.end method

.method public static simulateUnfetchedCoverImage()Z
    .locals 1

    .line 309
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCover:Z

    return v0
.end method

.method public static toggleEarlySidecarDownload(Landroid/content/Context;)V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled:Z

    const-string v1, "EnableEarlySidecarDownload"

    .line 155
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleHoldingOneTapSplashScreen(Landroid/content/Context;)V
    .locals 2

    .line 144
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->holdOneTapSplashUntilCoverTapped:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->holdOneTapSplashUntilCoverTapped:Z

    const-string v1, "EnableHoldingOneTapSplashScreen"

    .line 145
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenAll(Landroid/content/Context;)V
    .locals 2

    .line 98
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled:Z

    const-string v1, "EnableOneTapAll"

    .line 99
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenBiBB(Landroid/content/Context;)V
    .locals 2

    .line 139
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled:Z

    const-string v1, "EnableOneTapBiBB"

    .line 140
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenHome(Landroid/content/Context;)V
    .locals 2

    .line 108
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled:Z

    const-string v1, "EnableOneTapHome"

    .line 109
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenLibrary(Landroid/content/Context;)V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled:Z

    const-string v1, "EnableOneTapLibrary"

    .line 104
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenSDP(Landroid/content/Context;)V
    .locals 2

    .line 124
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPDisabled:Z

    const-string v1, "DisableOneTapSDP"

    .line 125
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapBookOpenSearch(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchOnFOSEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchOnFOSEnabled:Z

    const-string v1, "EnableOneTapSearchFOS"

    .line 115
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :cond_0
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchDisabled:Z

    const-string v1, "DisableOneTapSearch"

    .line 118
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static toggleOneTapEndActionsExpando(Landroid/content/Context;)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled:Z

    const-string v1, "EnableOneTapEndActionsExpando"

    .line 135
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleOneTapEndActionsNIS(Landroid/content/Context;)V
    .locals 2

    .line 129
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled:Z

    const-string v1, "EnableOneTapEndActionsNIS"

    .line 130
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toggleSimulateUnfetchedCover(Landroid/content/Context;)V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCover:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCover:Z

    const-string v1, "SimulateUnfetchedCoverImage"

    .line 150
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
