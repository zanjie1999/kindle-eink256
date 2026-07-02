.class public Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;
.super Landroid/widget/LinearLayout;
.source "ExpandableGridWidget.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$Companion;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

.field private expandBtn:Landroid/widget/Button;

.field private gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 37
    sget v2, Lcom/amazon/kcp/search/R$layout;->expandable_grid_widget_gridview:I

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/amazon/kcp/search/views/GridRecyclerView;

    iput-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    .line 41
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/views/GridRecyclerView;->setNumColumns(I)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kcp/search/R$layout;->expandable_grid_widget_button:I

    invoke-virtual {p1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    const/16 v0, 0x8

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kcp.search.views.GridRecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$updateExpandBtn(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->updateExpandBtn()V

    return-void
.end method

.method private final registerDataObserver()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method private final updateExpandBtn()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/views/GridRecyclerView;->getNumColumns()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getExpanded()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getExpandButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 105
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    return-object v0
.end method

.method protected final getExpandBtn()Landroid/widget/Button;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    return-object v0
.end method

.method protected getExpandButtonText()Ljava/lang/String;
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kcp/search/R$string;->expandable_grid_view_button:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026matter.format(itemCount))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getGridView()Lcom/amazon/kcp/search/views/GridRecyclerView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setExpanded(Z)V

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "SearchActivity"

    const-string v1, "LibrarySectionShowMoreButtonClicked"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->updateExpandBtn()V

    return-void
.end method

.method public final setAdapter(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setExpanded(Z)V

    .line 73
    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->onTotalItemCountChange(Lkotlin/jvm/functions/Function1;)V

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->registerDataObserver()V

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->updateExpandBtn()V

    return-void
.end method

.method protected final setExpandBtn(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    return-void
.end method

.method protected final setGridSpacing(II)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/search/views/GridRecyclerView;->setSpacing(II)V

    return-void
.end method

.method protected final setGridView(Lcom/amazon/kcp/search/views/GridRecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    return-void
.end method

.method public final setNumCols(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/views/GridRecyclerView;->setNumColumns(I)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->adapter:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setCollapsedSize(I)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->updateExpandBtn()V

    return-void
.end method

.method public final setResId(I)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    return-void
.end method

.method public final setResIdForExpandBtn(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->expandBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    return-void
.end method

.method public final setResIdForGridView(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->gridView:Lcom/amazon/kcp/search/views/GridRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setId(I)V

    return-void
.end method
