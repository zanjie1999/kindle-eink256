.class public final Lcom/amazon/kindle/recaps/tutorial/RecapsTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "RecapsTutorialProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Recaps"

    .line 17
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "comparisonType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p3, 0x0

    const p4, 0x74e1d78f

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ShowRecapsTutorial"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    sget-object p1, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsEnabledForCurrentBook()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsTooltipFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    :cond_1
    :goto_0
    return p3
.end method
