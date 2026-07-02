.class public final Lcom/amazon/kcp/home/widget/ShovelerWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "ShovelerWidget.kt"


# instance fields
.field private final adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private footerButton:Landroid/widget/Button;

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field private subTitleTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    .line 41
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->shoveler_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->viewLayoutId:I

    .line 42
    invoke-virtual {p3}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->priority:I

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/ShovelerWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 126
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 129
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 130
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 126
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/ShovelerCardView;

    if-nez v0, :cond_0

    const-string p1, "com.amazon.kcp.home.widget.ShovelerWidget"

    const-string p2, "Non-ShovelerView received, ignoring and returning w/o binding a model to view"

    .line 58
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    check-cast p1, Lcom/amazon/kcp/home/ui/ShovelerCardView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getShoveler()Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->titleTextView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->footerButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const-string/jumbo v1, "shovelerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/HomeCardView;->getLastVisibleShovelerItemPosition$LibraryModule_release()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->setAm(Lcom/amazon/kindle/home/action/HomeActionManager;)V

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "titleTextView"

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v0, :cond_4

    move-object p1, v2

    :cond_4
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_6

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "subTitleTextView"

    if-eqz p1, :cond_12

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v5, :cond_7

    move-object v4, v2

    :cond_7
    check-cast v4, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 82
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 v0, 0x8

    .line 84
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->footerButton:Landroid/widget/Button;

    const-string v4, "footerButton"

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v0, :cond_a

    move-object p1, v2

    :cond_a
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz p1, :cond_d

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/ShovelerWidget$bindView$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/ShovelerWidget;)V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->titleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_f

    aput-object v7, v6, v5

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v1, :cond_e

    aput-object v1, v6, v3

    invoke-interface {p2, p1, v2, v0, v6}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->viewLayoutId:I

    return v0
.end method

.method public onConfigurationChange()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "shovelerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public setDisplayPosition(I)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->setDisplayPosition(I)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->setWidgetPosition(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
