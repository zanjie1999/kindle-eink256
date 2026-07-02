.class public final Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;
.super Ljava/lang/Object;
.source "SeriesDetailRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/library/RecyclerHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SeriesDetailHeader"
.end annotation


# instance fields
.field private final fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

.field private headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->this$0:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    return-void
.end method


# virtual methods
.method public bindHeaderView(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->access$getSeriesDetailHelper$p(Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;)Lcom/amazon/kcp/library/SeriesDetailHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/library/SeriesDetailHelper;->setUpSeriesSecondaryBar(Landroid/view/View;Ljava/lang/String;)Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->fragment:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->this$0:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 53
    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 54
    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 55
    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 52
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public newHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->this$0:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->series_detail_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(acti\u2026il_header, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public recycleHeaderView(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;->this$0:Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
