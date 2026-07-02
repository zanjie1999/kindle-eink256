.class public final Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "GoodReadsShelfController.kt"


# instance fields
.field private final endActionsActivity:Landroid/app/Activity;

.field private final goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

.field private final model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;)V
    .locals 4

    const-string v0, "endActionsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->endActionsActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    const/4 p1, 0x1

    .line 35
    invoke-static {p1}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    invoke-virtual {p2}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->getGoodReadsShelfData()Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move-result-object p2

    const-string v0, "goodReadsInfo"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;-><init>(Ljava/lang/String;)V

    .line 37
    :goto_0
    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->endActionsActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "model.metricsTag"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    return-void
.end method

.method public static final synthetic access$getModel$p(Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;)Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    return-object p0
.end method

.method private final initAutoShelvingMetrics()V
    .locals 4

    .line 72
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x1

    const-string v2, "DisplayedGoodreadsShelf"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method private final initializeHeader(Landroid/view/View;)V
    .locals 2

    .line 66
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 67
    sget v1, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_shelf_widget_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "rootView.findViewById(R.\u2026reads_shelf_widget_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "animationCoordinator"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p3, "EndActionsPlugin.sdk"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 45
    sget p3, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_goodreads_shelf:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "endActionsActivity.layou\u2026ads_shelf, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "rootView.findViewById(R.\u2026ons_subtle_jit_container)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    .line 49
    sget p3, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_shelf_component_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string/jumbo v0, "rootView\n               \u2026helf_component_container)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p3, Landroid/widget/FrameLayout;

    .line 50
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    .line 51
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "endActionsActivity.layoutInflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p3, p2, v1, p4}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 52
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->model:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    iget-object p2, p2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p3, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, p3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 55
    new-instance p2, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController$getView$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController$getView$1;-><init>(Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->initializeHeader(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->initAutoShelvingMetrics()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    .line 83
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onDestroy()V

    return-void
.end method

.method public final onGoodReadsShelfManualEvent(Lcom/amazon/readingactions/goodreadsshelf/service/GoodReadsShelfManualEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useManualShelfExperience()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onPause()V

    return-void
.end method

.method public onRender()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onRender()V

    .line 99
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onRender()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;->goodReadsShelfWidget:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
