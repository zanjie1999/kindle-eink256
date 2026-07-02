.class public final Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "OrientationLockMovedTutorialProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "OrientationLockMoved"

    .line 19
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "comparisonType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x229ccc87

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OrientationLockTapEnabled"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 26
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isOrientationLockTapEnabled()Z

    move-result p2

    .line 27
    invoke-static {p2, p1, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final publishTutorialEvent()V
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v1, "ShowOrientationLockedMovedTutorial"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
