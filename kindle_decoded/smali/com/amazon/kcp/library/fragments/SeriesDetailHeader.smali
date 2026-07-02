.class public final Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;
.super Ljava/lang/Object;
.source "SeriesDetailHeader.kt"

# interfaces
.implements Lcom/amazon/kcp/library/RecyclerHeader;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final groupId:Ljava/lang/String;

.field private headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

.field private final recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field private final seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/SeriesDetailHelper;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "seriesDetailHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recyclerLayoutType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-void
.end method


# virtual methods
.method public bindHeaderView(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->groupId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/library/SeriesDetailHelper;->setUpSeriesSecondaryBar(Landroid/view/View;Ljava/lang/String;)Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 31
    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 32
    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 33
    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->series_detail_toolbar_padding_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 30
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public newHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->activity:Landroid/app/Activity;

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

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->headerDataTask:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
