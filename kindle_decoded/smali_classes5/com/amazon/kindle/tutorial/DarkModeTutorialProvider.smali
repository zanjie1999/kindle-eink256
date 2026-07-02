.class public final Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "DarkModeTutorialProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "DarkMode"

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "comparisonType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v0, -0x513f9f05

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    const v0, -0x467b2c7b

    if-eq p3, v0, :cond_2

    const v0, 0x729d3c0a

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "UserSetColorModeDifferent"

    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    const/4 p3, 0x1

    .line 40
    invoke-virtual {p2, p3}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode(Z)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    const-string/jumbo v2, "userSettingsController"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p2

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    .line 41
    :cond_1
    invoke-static {v1, p1, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string p3, "DarkModePhaseThreeEnabled"

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 35
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result p2

    .line 36
    invoke-static {p2, p1, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string p3, "WasInBookUpgradePerformed"

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 44
    sget-object p2, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    invoke-virtual {p2}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->isUpgradeComplete()Z

    move-result p2

    invoke-static {p2, p1, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v1

    :cond_4
    :goto_0
    return v1
.end method

.method public handleAction(Ljava/lang/String;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x266fb341

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DismissDarkModeTutorial"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "darkModeIntro"

    .line 57
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->reportJitDismissed(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/DarkModeTutorialProviderKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final publishTutorialEvent()V
    .locals 2

    .line 51
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v1, "ShowDarkModeTutorial"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
