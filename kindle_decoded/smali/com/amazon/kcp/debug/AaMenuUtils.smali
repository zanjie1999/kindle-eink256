.class public final Lcom/amazon/kcp/debug/AaMenuUtils;
.super Ljava/lang/Object;
.source "AaMenuUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/AaMenuUtils;

.field private static final TAG:Ljava/lang/String;

.field private static final WEBLAB_TREATMENT_CONTROL:Ljava/lang/String;

.field private static final WEBLAB_TREATMENT_ENABLED:Ljava/lang/String;

.field private static cmxSettingsCacheEnabled:Z

.field private static cmxSettingsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/kcp/debug/AaMenuUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/AaMenuUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->INSTANCE:Lcom/amazon/kcp/debug/AaMenuUtils;

    .line 16
    const-class v0, Lcom/amazon/kcp/debug/AaMenuUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AaMenuUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->TAG:Ljava/lang/String;

    const-string v0, "C"

    .line 18
    sput-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->WEBLAB_TREATMENT_CONTROL:Ljava/lang/String;

    const-string v0, "T1"

    .line 19
    sput-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->WEBLAB_TREATMENT_ENABLED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableCache(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/amazon/kcp/debug/AaMenuUtils;->cmxSettingsCacheEnabled:Z

    return-void
.end method

.method private final isAaMenuJSONRefactorEnabledOnWeblab()Z
    .locals 3

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "KINDLE_ANDROID_3P_AA_MENU_V2_JSON_REFACTOR_328274"

    .line 48
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    sget-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->WEBLAB_TREATMENT_ENABLED:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aa Menu V2 JSON Refactor weblab treatment is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public static final shouldEnableAaMenuJSONRefactor()Z
    .locals 3

    .line 38
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 39
    sget-object v1, Lcom/amazon/kcp/debug/AaMenuUtils;->INSTANCE:Lcom/amazon/kcp/debug/AaMenuUtils;

    invoke-direct {v1}, Lcom/amazon/kcp/debug/AaMenuUtils;->isAaMenuJSONRefactorEnabledOnWeblab()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isAaMenuV2JSONRefactorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aa Menu V2 JSON refactor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public static final shouldShowAaMenuV2CmxSettings()Z
    .locals 3

    .line 63
    sget-boolean v0, Lcom/amazon/kcp/debug/AaMenuUtils;->cmxSettingsCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 64
    sget-boolean v0, Lcom/amazon/kcp/debug/AaMenuUtils;->cmxSettingsEnabled:Z

    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "KINDLE_ANDROID_COMIXOLOGY_GV_SETTINGS_348729"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_2
    sget-object v0, Lcom/amazon/kcp/debug/AaMenuUtils;->WEBLAB_TREATMENT_ENABLED:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/AaMenuUtils;->cmxSettingsEnabled:Z

    const/4 v1, 0x1

    .line 69
    sput-boolean v1, Lcom/amazon/kcp/debug/AaMenuUtils;->cmxSettingsCacheEnabled:Z

    return v0
.end method
