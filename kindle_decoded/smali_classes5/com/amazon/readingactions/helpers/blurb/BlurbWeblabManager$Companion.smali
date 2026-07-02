.class public final Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;
.super Ljava/lang/Object;
.source "BlurbWeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBlurbExperimentWeblabTreatment()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "T2"

    return-object v0

    :cond_0
    const-string v0, "BDC_EA_BLURB_CARD_ANDROID_364410"

    .line 42
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabTreatment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "weblab"

    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "weblab.treatmentAndRecordTrigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "C"

    return-object p1
.end method

.method public final isBlurbCardAvailableAndEnabled()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/amazon/kindle/krx/application/AppType;

    .line 26
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v4, "EndActionsPlugin.sdk"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    const-string v4, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->isEarlyAccessBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v0, "BDC_EA_BLURB_CARD_ANDROID_GATING_364418"

    .line 34
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    .line 35
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEarlyAccessBuild()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    return v0
.end method
