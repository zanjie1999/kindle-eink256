.class public Lcom/amazon/krf/internal/SlidePageTransitionController;
.super Lcom/amazon/krf/internal/PageTransitionController;
.source "SlidePageTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;,
        Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEWS:I = 0xc350

.field private static final ROOT_POSITION:I = 0x4e20

.field private static final VIEW_PAGER_CACHE_LIMIT:I = 0x1


# instance fields
.field private mAdapter:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;

.field private mPendingRootPage:Lcom/amazon/krf/platform/KRFPageView;

.field private mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

.field private mTrackedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPagerListener:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/amazon/krf/internal/PageTransitionController;-><init>()V

    .line 35
    new-instance v0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;-><init>(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/internal/SlidePageTransitionController$1;)V

    iput-object v0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mAdapter:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;

    .line 36
    new-instance v0, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;-><init>(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/internal/SlidePageTransitionController$1;)V

    iput-object v0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mViewPagerListener:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mTrackedViews:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mPendingRootPage:Lcom/amazon/krf/platform/KRFPageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/platform/KRFPageView;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mPendingRootPage:Lcom/amazon/krf/platform/KRFPageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/krf/internal/SlidePageTransitionController;)Landroid/util/SparseArray;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mTrackedViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/krf/internal/SlidePageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/krf/internal/SlidePageTransitionController;Lcom/amazon/krf/platform/KRFPageView;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    return-object p1
.end method


# virtual methods
.method public goToPosition(Lcom/amazon/krf/platform/Position;Ljava/lang/Runnable;)Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/internal/PageTransitionDataProvider;->getPageViewAtPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/amazon/krf/internal/SlidePageTransitionController;->setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .line 59
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const p1, -0xbbbbbc

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 64
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/PageTransitionController;->setPagerView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mPendingRootPage:Lcom/amazon/krf/platform/KRFPageView;

    .line 74
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mTrackedViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 78
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mAdapter:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 80
    iget-object p2, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mViewPagerListener:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionOnPageChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    const/16 p2, 0x4e20

    .line 83
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 85
    iget-object p1, p0, Lcom/amazon/krf/internal/SlidePageTransitionController;->mAdapter:Lcom/amazon/krf/internal/SlidePageTransitionController$SlidePageTransitionPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 88
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method
