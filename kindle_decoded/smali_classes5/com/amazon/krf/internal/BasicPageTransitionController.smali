.class public Lcom/amazon/krf/internal/BasicPageTransitionController;
.super Lcom/amazon/krf/internal/PageTransitionController;
.source "BasicPageTransitionController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;
    }
.end annotation


# instance fields
.field private final TAP_THRESHOLD_FOR_PAGE_TRANSITION:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;

.field private mGoToNavigationTarget:Lcom/amazon/krf/platform/KRFPageView;

.field private mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/krf/internal/PageTransitionController;-><init>()V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 25
    iput v0, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->TAP_THRESHOLD_FOR_PAGE_TRANSITION:F

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/krf/internal/BasicPageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    return-object p0
.end method


# virtual methods
.method public goToPosition(Lcom/amazon/krf/platform/Position;Ljava/lang/Runnable;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/internal/PageTransitionDataProvider;->getPageViewAtPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/amazon/krf/internal/BasicPageTransitionController;->setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/PageTransitionController;->setPagerView(Landroid/view/ViewGroup;)V

    .line 42
    new-instance v1, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;-><init>(Lcom/amazon/krf/internal/BasicPageTransitionController;Lcom/amazon/krf/internal/BasicPageTransitionController$1;)V

    iput-object v1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGestureListener:Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;

    .line 43
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGestureListener:Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 115
    iget-object p2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    if-ne p2, p1, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object p3, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    if-eqz p3, :cond_1

    .line 121
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    move-object p4, p1

    check-cast p4, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getListener()Lcom/amazon/krf/platform/PageTransitionListener;

    move-result-object p5

    iget-object p6, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGoToNavigationTarget:Lcom/amazon/krf/platform/KRFPageView;

    const/4 p7, 0x1

    if-eq p1, p6, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p5, p2, p3, p7, p1}, Lcom/amazon/krf/platform/PageTransitionListener;->didDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGoToNavigationTarget:Lcom/amazon/krf/platform/KRFPageView;

    .line 131
    iput-object p4, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BasicPageTransitionController"

    const-string/jumbo p2, "setPageView given null view!"

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mSelectedPage:Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getListener()Lcom/amazon/krf/platform/PageTransitionListener;

    move-result-object v1

    invoke-interface {v1, v0, p3, p2}, Lcom/amazon/krf/platform/PageTransitionListener;->willDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 74
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    if-nez p2, :cond_2

    .line 77
    iput-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController;->mGoToNavigationTarget:Lcom/amazon/krf/platform/KRFPageView;

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method
