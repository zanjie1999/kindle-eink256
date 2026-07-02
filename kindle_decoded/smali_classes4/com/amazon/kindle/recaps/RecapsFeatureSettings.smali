.class public final Lcom/amazon/kindle/recaps/RecapsFeatureSettings;
.super Ljava/lang/Object;
.source "RecapsFeatureSettings.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

.field private static final TAG:Ljava/lang/String;

.field private static recapsEnabledForCurrentBook:Z

.field private static recapsFeatureEnabled:Z

.field private static recapsTooltipFeatureEnabled:Z

.field private static recapsTutorialWeblabEnabled:Z

.field private static recapsWeblabEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    .line 70
    const-class v0, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecapsEnabledForCurrentBook()Z
    .locals 2

    .line 76
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->hasRecaps()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getRecapsFeatureEnabled()Z
    .locals 2

    .line 82
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getDebugConfig()Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->getRecapsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

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

.method public final getRecapsTooltipFeatureEnabled()Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsTutorialWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

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

.method public final getRecapsTutorialWeblabEnabled()Z
    .locals 2

    .line 95
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isRecapsTutorialKFAWeblabEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_2

    .line 97
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isRecapsTutorialFOSWeblabEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getRecapsWeblabEnabled()Z
    .locals 2

    .line 87
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isKFAWeblabEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_2

    .line 89
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isFOSWeblabEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
