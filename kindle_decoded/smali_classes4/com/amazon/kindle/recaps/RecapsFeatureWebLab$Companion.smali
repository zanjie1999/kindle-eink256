.class public final Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;
.super Ljava/lang/Object;
.source "RecapsFeatureSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsFeatureSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsFeatureSettings.kt\ncom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion\n*L\n1#1,103:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;-><init>()V

    return-void
.end method

.method private final isWeblabEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "weblab"

    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    const-string v0, "T1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final isFOSWeblabEnabled()Z
    .locals 1

    .line 40
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_FOS_LAUNCH_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_FOS_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isKFAWeblabEnabled()Z
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_KFA_LAUNCH_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_KFA_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRecapsTutorialFOSWeblabEnabled()Z
    .locals 1

    .line 60
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isRecapsTutorialKFAWeblabEnabled()Z
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->access$getRECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;->isWeblabEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
