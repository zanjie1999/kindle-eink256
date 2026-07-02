.class public Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;
.super Lcom/amazon/kindle/nln/BaseNonLinearFragment;
.source "BirdsEyeViewFragment.java"

# interfaces
.implements Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;


# static fields
.field private static final SPAN_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field isPFVButtonActive:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private orientation:I

.field private pageHorizontalPadding:I

.field private recyclerScrollSettleListener:Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->orientation:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->isPFVButtonActive:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    return-object p0
.end method

.method private publishScale(F)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;-><init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;F)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private setUpPageFlipButton(Landroid/widget/ImageButton;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_pageflip_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 180
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_pageflip:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 182
    :goto_0
    new-instance v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateScale()V
    .locals 4

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 137
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->pageHorizontalPadding:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->birdseye_recycler_side_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 139
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 140
    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->publishScale(F)V

    return-void
.end method


# virtual methods
.method protected findFocusPages(Lcom/amazon/kindle/nln/VisiblePagesData;)V
    .locals 13

    .line 262
    sget-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    iget-object v1, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 264
    :cond_0
    sget-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    iget-object v4, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    .line 269
    iget-object v4, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    div-int/2addr v4, v3

    .line 273
    iget-object v5, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    .line 275
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 276
    iget-object v6, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 277
    iget-object v7, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v2

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 278
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-eq v10, v1, :cond_3

    goto :goto_0

    .line 282
    :cond_3
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/2addr v11, v3

    add-int/2addr v10, v11

    sub-int v10, v4, v10

    .line 283
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 284
    iget-object v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/2addr v12, v3

    add-int/2addr v11, v12

    sub-int v11, v5, v11

    .line 285
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v10, v0, :cond_4

    move-object v8, v9

    move v0, v10

    :goto_1
    move v6, v11

    goto :goto_0

    :cond_4
    if-ne v10, v0, :cond_2

    if-ge v11, v6, :cond_2

    move-object v8, v9

    goto :goto_1

    .line 301
    :cond_5
    move-object v0, v8

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 304
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 306
    iget-object v5, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_6

    .line 307
    iget-object v5, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    goto :goto_3

    :cond_6
    move-object v5, v2

    .line 308
    :goto_3
    iget-object v6, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v0, v6, :cond_7

    iget-object p1, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 310
    :cond_7
    invoke-virtual {p0, v5, v4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    .line 311
    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    goto :goto_4

    .line 313
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    .line 314
    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    :goto_4
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 234
    sget v0, Lcom/amazon/kindle/krl/R$id;->content_container:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 206
    sget v0, Lcom/amazon/kindle/krl/R$layout;->bev_layout:I

    return v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 212
    new-instance v0, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 213
    new-instance v1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method protected getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 239
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method

.method protected newBreadcrumbResourceProvider()Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;
    .locals 2

    .line 244
    new-instance v0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected newTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;
    .locals 1

    .line 249
    new-instance v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    return-object v0
.end method

.method public onBreadcrumbClicked(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setPageLoadingEnabled(Z)V

    .line 325
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onBreadcrumbClicked(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->updateScale()V

    .line 122
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->orientation:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "BirdsEyeViewFragment onCreateView"

    const/4 v1, 0x1

    .line 66
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 72
    :cond_0
    sget p3, Lcom/amazon/kindle/krl/R$id;->exit_bev:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget v1, Lcom/amazon/kindle/krl/R$id;->breadcrumb_1_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p2

    .line 79
    :cond_1
    new-instance p2, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$1;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 92
    :cond_2
    invoke-direct {p0, p3}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->setUpPageFlipButton(Landroid/widget/ImageButton;)V

    const/4 p2, 0x0

    .line 93
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->assets_pfv_page:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 96
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 97
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->pageHorizontalPadding:I

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->orientation:I

    .line 100
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onDestroyView()V

    .line 108
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFirstLayout()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFirstLayout()V

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->recyclerScrollSettleListener:Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->recyclerScrollSettleListener:Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Not attached to reader activity."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFragmentShown()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFragmentShown()V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->updateScale()V

    return-void
.end method

.method protected onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 330
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 331
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 335
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isPageLoadingEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 336
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setPageLoadingEnabled(Z)V

    .line 337
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onThumbnailPlaceholderVisibilityEvent(Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 168
    iget-boolean p1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;->areShown:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->isPFVButtonActive:Z

    return-void
.end method

.method protected showTocHeaders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
