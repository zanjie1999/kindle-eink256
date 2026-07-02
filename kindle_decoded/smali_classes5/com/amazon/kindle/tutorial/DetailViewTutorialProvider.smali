.class public final Lcom/amazon/kindle/tutorial/DetailViewTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "DetailViewTutorialProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "DetailViewToolTip"

    .line 21
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparisonType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetailViewShowTutorial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DetailViewEnabled"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result p1

    .line 38
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 37
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onLibraryActivatedEvent(Lcom/amazon/kindle/event/LibraryActivatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/DetailViewTutorialProvider;->publishTutorialEvent()V

    return-void
.end method

.method public final publishTutorialEvent()V
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v1, "DetailViewShowTutorial"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
