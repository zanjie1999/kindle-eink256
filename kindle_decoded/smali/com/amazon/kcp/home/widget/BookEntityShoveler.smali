.class public final Lcom/amazon/kcp/home/widget/BookEntityShoveler;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "BookEntityShoveler.kt"


# instance fields
.field private final adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private hasBeenShownToUser:Z

.field private final priority:I

.field private shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    .line 31
    invoke-virtual {p2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->priority:I

    .line 32
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->book_entity_shoveler:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->viewLayoutId:I

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/BookEntityShoveler;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

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
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/ShovelerCardView;

    if-nez v0, :cond_0

    const-string p1, "com.amazon.kcp.home.cards.BookEntityShoveler"

    const-string p2, "Non ShovelerView received, ignoring and returning w/o binding a model to view"

    .line 40
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    check-cast p1, Lcom/amazon/kcp/home/ui/ShovelerCardView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getShoveler()Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const-string/jumbo v1, "shoveler"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/HomeCardView;->getLastVisibleShovelerItemPosition$LibraryModule_release()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    if-nez v1, :cond_4

    move-object v0, v2

    :cond_4
    check-cast v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    if-eqz v0, :cond_5

    .line 56
    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->refreshData()V

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v1, :cond_6

    move-object v0, v2

    :cond_6
    check-cast v0, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v1, :cond_8

    move-object v0, v2

    :cond_8
    check-cast v0, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 70
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v4, :cond_a

    move-object v0, v2

    :cond_a
    check-cast v0, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v0, :cond_b

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    :cond_b
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    new-instance v4, Lcom/amazon/kcp/home/widget/BookEntityShoveler$bindView$4;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/home/widget/BookEntityShoveler$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/BookEntityShoveler;)V

    new-array v3, v3, [Landroid/view/View;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-interface {p2, v0, v2, v4, v3}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void

    .line 55
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getAdapter()Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    return-object v0
.end method

.method public getHasBeenShownToUser()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->hasBeenShownToUser:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->viewLayoutId:I

    return v0
.end method

.method public onConfigurationChange()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "shoveler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public setDisplayPosition(I)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->setDisplayPosition(I)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->adapter:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->setWidgetPosition(I)V

    return-void
.end method

.method public setHasBeenShownToUser(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShoveler;->hasBeenShownToUser:Z

    return-void
.end method
