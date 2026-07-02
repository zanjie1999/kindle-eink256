.class public final Lcom/amazon/kindle/tutorial/AccessibilityTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "AccessibilityTutorialProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Accessibility"

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "comparisonType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    const-string v0, "Utils.getFactory().readerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "Utils.getFactory().reade\u2026docViewer ?: return false"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DocViewerTouchAccessibilitySupport"

    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result p1

    .line 48
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 49
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const-string v1, "DocViewerPageTurnAccessibilitySupport"

    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isAccessibilityPageTurnSupportEnabled()Z

    move-result p1

    .line 53
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 54
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    const-string p1, "TouchExplorationEnabled"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 44
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    const-string p1, "IsWindowsDevice"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result p1

    .line 58
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 59
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bdf7271 -> :sswitch_3
        -0x646b26e3 -> :sswitch_2
        -0x51e46529 -> :sswitch_1
        0x5f5c6e56 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onBookOpenAccessibilityReady(Lcom/amazon/kindle/tutorial/BookOpenAccessibilityReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v0, "BookOpenAccessibilityReady"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
