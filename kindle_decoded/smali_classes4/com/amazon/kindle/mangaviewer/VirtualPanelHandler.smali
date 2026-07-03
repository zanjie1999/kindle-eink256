.class public Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "VirtualPanelHandler.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Lcom/amazon/kindle/mangaviewer/ViewModeChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEAD_ZONE_RADIUS:F = 4.0f

.field private static final EVENT_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTRA_PAGE_TRANSITION_TIME_BASE:I = 0xfa

.field private static MAX_SWIPE_TIME:J = 0x64L

.field private static MIN_SWIPE_SPEED:F = 1000.0f

.field private static final NEXT_PAGE:I = 0x1

.field private static final PAGE_CHANGE_FADE_IN_TIME:I = 0xfa

.field private static final PAGE_CHANGE_FADE_OUT_TIME:I = 0xfa

.field private static final PREV_PAGE:I = -0x1

.field private static SWIPE_SPEED_THRESHOLD:F = 0.5f

.field private static final VIRTUAL_PANEL_ENTRANCE_TIME:I = 0x1f4

.field private static final VIRTUAL_PANEL_HANDLER:Ljava/lang/String; = "VirtualPanelHandler"


# instance fields
.field private checkedSinceDownEventForSwipe:Z

.field private final density:F

.field private downEvent:Landroid/view/MotionEvent;

.field private isVirtualPanelAnimationEnabled:Z

.field private m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private moveAfterDownStartTime:J

.field private probableSwipe:Z

.field private showVirtualPanelTip:Z

.field private startedMoveSinceDown:Z

.field private virtualPanelSessionReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->MANGA_VIEWMODE_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->EVENT_TYPES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->startedMoveSinceDown:Z

    .line 113
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->checkedSinceDownEventForSwipe:Z

    .line 114
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    .line 116
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->showVirtualPanelTip:Z

    .line 119
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->virtualPanelSessionReported:Z

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    .line 126
    invoke-interface {p1, p0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 127
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/kmv/R$bool;->manga_virtual_panel_tooltip_enabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->showVirtualPanelTip:Z

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/kmv/R$bool;->manga_virtual_panel_animation_enabled:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    .line 129
    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 130
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->density:F

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->loadNewPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->moveViewToCurrentPanel(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Z)V

    return-void
.end method

.method private animateVirtualPanelEnter(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFF)V
    .locals 8

    .line 517
    new-instance v7, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$1;-><init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 537
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 538
    invoke-interface {v7, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 539
    invoke-interface {v7, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 540
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->onAnimationEnd()V

    return-void

    .line 544
    :cond_0
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 547
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v1

    mul-float p3, p3, v1

    .line 548
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v1

    mul-float p4, p4, v1

    const/4 v1, 0x0

    .line 546
    invoke-static {v1, p3, v1, p4}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createTranslateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p3

    const-wide/16 v1, 0x1f4

    .line 549
    invoke-virtual {p3, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 552
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result p4

    div-float p4, p5, p4

    .line 553
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v3

    div-float/2addr p5, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 551
    invoke-static {v3, p4, v3, p5}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createScaleAnimation(FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object p4

    .line 554
    invoke-virtual {p4, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 556
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 557
    invoke-virtual {p1, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 558
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 560
    invoke-virtual {p1, v7}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 562
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateVirtualPanelExit(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFF)V
    .locals 5

    .line 579
    new-instance p3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$2;-><init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 599
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 600
    invoke-interface {p3, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 601
    invoke-interface {p3, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 602
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->onAnimationEnd()V

    return-void

    .line 606
    :cond_0
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p6, 0x1

    invoke-direct {p1, p6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 608
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x437a0000    # 250.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const/high16 v3, 0x43480000    # 200.0f

    mul-float v0, v0, v3

    add-float/2addr v0, v1

    float-to-long v0, v0

    const/4 v3, 0x0

    .line 612
    invoke-static {v3, p4, v3, p5}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createTranslateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object p4

    .line 614
    invoke-virtual {p4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 617
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result p5

    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v3

    div-float/2addr p5, v3

    .line 618
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v3

    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    .line 616
    invoke-static {v2, p5, v2, v3}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createScaleAnimation(FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object p5

    .line 619
    invoke-virtual {p5, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 621
    invoke-virtual {p1, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 622
    invoke-virtual {p1, p5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 623
    invoke-virtual {p1, p6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 625
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 627
    invoke-virtual {p1, p6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 628
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateVirtualPanelMove(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFFFI)V
    .locals 10

    .line 896
    new-instance v8, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p7

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$5;-><init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFLcom/amazon/kindle/mangaviewer/IMangaViewPager;I)V

    move-object v0, p0

    .line 921
    iget-boolean v1, v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 922
    invoke-interface {v8, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 923
    invoke-interface {v8, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 924
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->onAnimationEnd()V

    return-void

    .line 927
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x0

    move v4, p3

    move v5, p4

    .line 929
    invoke-static {v3, p3, v3, p4}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createTranslateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    move/from16 v4, p8

    int-to-long v4, v4

    .line 932
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 935
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v6

    div-float v6, p7, v6

    .line 936
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v7

    div-float v7, p7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 934
    invoke-static {v9, v6, v9, v7}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createScaleAnimation(FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object v6

    .line 937
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 939
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 940
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 941
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 942
    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object v2, p2

    .line 943
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private beginVirtualPanelPageTransition(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
    .locals 7

    .line 693
    new-instance v6, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$3;-><init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Lcom/amazon/kindle/mangaviewer/BoundImageView;)V

    .line 719
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 720
    invoke-interface {v6, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 721
    invoke-interface {v6, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 722
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->onAnimationEnd()V

    return-void

    .line 726
    :cond_0
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    .line 727
    invoke-static {p3, p4, p2}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createAlphaAnimation(FFLcom/amazon/kindle/mangaviewer/BoundImageView;)Landroid/view/animation/AlphaAnimation;

    move-result-object p3

    const-wide/16 v0, 0xfa

    .line 729
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 730
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 732
    invoke-virtual {p1, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 734
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private computeDistanceFromDownToEvent(Landroid/view/MotionEvent;)D
    .locals 2

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->square(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->square(F)F

    move-result p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    return-wide v0
.end method

.method private computeInchSpeedFromDownToEvent(Landroid/view/MotionEvent;)D
    .locals 4

    .line 989
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computePixelSpeedFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->density:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private computePixelSpeedFromDownToEvent(Landroid/view/MotionEvent;)D
    .locals 6

    .line 979
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeXVelocityFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 980
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeYVelocityFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 979
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private computeXVelocityFromDownToEvent(Landroid/view/MotionEvent;)D
    .locals 6

    .line 999
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v2

    mul-double v0, v0, v4

    return-wide v0
.end method

.method private computeYVelocityFromDownToEvent(Landroid/view/MotionEvent;)D
    .locals 6

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v2

    mul-double v0, v0, v4

    return-wide v0
.end method

.method private displayToastIfNecessary(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 4

    .line 953
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->showVirtualPanelTip:Z

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getMangaSettingsController()Lcom/amazon/kindle/mangaviewer/MangaSettingsController;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaSettingsController;->getVirtualPanelTipCount()I

    move-result v1

    .line 956
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelTipCountLimit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 957
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/kmv/R$string;->virtual_panel_instruction_toast:I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/lit8 v1, v1, 0x1

    .line 958
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaSettingsController;->setVirtualPanelTipCount(I)V

    :cond_0
    return-void
.end method

.method private enterVirtualPanel(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
    .locals 6

    .line 444
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 447
    invoke-virtual {p3, v0, v1, v3, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setGridLocation(IIII)V

    .line 453
    invoke-virtual {p3, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v5

    .line 455
    invoke-virtual {p3, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationY(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v4

    .line 456
    invoke-virtual {p3, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationX(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v3

    move-object v0, p0

    move-object v1, p2

    .line 458
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelEnter(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFF)V

    :cond_0
    return-void
.end method

.method private exitVirtualPanel(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 7

    .line 471
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getViewToImageRatio()F

    move-result v3

    .line 478
    invoke-virtual {v2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateY()F

    move-result v0

    neg-float v5, v0

    .line 479
    invoke-virtual {v2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result v0

    neg-float v4, v0

    .line 481
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 483
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelExit(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFF)V

    .line 489
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getLeftImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    .line 490
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getRightImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 494
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 496
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 499
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    :cond_2
    return-void
.end method

.method private handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z
    .locals 3

    .line 650
    sget-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->goLeft()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    if-ne p1, v0, :cond_2

    .line 651
    invoke-virtual {p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->goRight()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 653
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->moveViewToCurrentPanel(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Z)V

    return v2

    .line 656
    :cond_3
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    .line 661
    invoke-virtual {p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->atFirstPosition()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPrevPageAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    .line 663
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->beginVirtualPanelPageTransition(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    goto :goto_1

    .line 665
    :cond_4
    invoke-interface {p2, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    goto :goto_1

    .line 670
    :cond_5
    invoke-virtual {p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->atLastPosition()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 671
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 672
    invoke-direct {p0, p2, p3, v2, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->beginVirtualPanelPageTransition(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    goto :goto_1

    .line 674
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    :cond_7
    :goto_1
    return v2
.end method

.method private loadNewPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ILcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
    .locals 6

    .line 746
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    .line 747
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v1

    .line 748
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 756
    sget-object p2, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v1, p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSingleCenteredPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Z

    move-result p2

    .line 758
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->forwardOneItem()V

    .line 760
    invoke-interface {v0, p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->navigateAndStartPrerender(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    .line 762
    invoke-virtual {p3, p1, v3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setUpGrid(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ZZ)V

    .line 764
    invoke-virtual {p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setMinPosition()V

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 768
    sget-object p2, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v1, p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSingleCenteredPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Z

    move-result p2

    .line 770
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->backwardOneItem()V

    .line 772
    invoke-interface {v0, p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->navigateAndStartPrerender(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    .line 774
    invoke-virtual {p3, p1, v3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setUpGrid(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ZZ)V

    .line 776
    invoke-virtual {p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setMaxPosition()V

    .line 779
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p2

    if-eq p2, v2, :cond_2

    if-eqz p2, :cond_2

    .line 782
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v0

    .line 784
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationX(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v1

    .line 785
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationY(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result p3

    .line 788
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    mul-float v1, v1, v0

    mul-float p3, p3, v0

    .line 789
    invoke-virtual {p2, v1, p3}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    goto :goto_1

    .line 792
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->startCurrentPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 796
    new-instance p3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;

    invoke-direct {p3, p0, p2, v2, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$4;-><init>(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 815
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->isVirtualPanelAnimationEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 816
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 817
    invoke-interface {p3, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 818
    invoke-interface {p3, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 819
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->onAnimationEnd()V

    return-void

    .line 823
    :cond_3
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 824
    invoke-static {v1, v2, p2}, Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;->createAlphaAnimation(FFLcom/amazon/kindle/mangaviewer/BoundImageView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    const-wide/16 v4, 0xfa

    .line 826
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 827
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 828
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 830
    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 832
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method

.method private moveViewToCurrentPanel(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;Z)V
    .locals 11

    .line 850
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationX(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v0

    .line 851
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationY(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v1

    .line 853
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v9

    mul-float v7, v0, v9

    mul-float v8, v1, v9

    if-nez p4, :cond_0

    .line 861
    invoke-virtual {p2, v9}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 862
    invoke-virtual {p2, v7, v8}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    .line 863
    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    .line 865
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result p3

    .line 866
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateY()F

    move-result p4

    .line 868
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v2

    .line 869
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleY()F

    move-result v3

    mul-float v0, v0, v2

    sub-float v5, v0, p3

    mul-float v1, v1, v3

    sub-float v6, v1, p4

    const/16 p3, 0xfa

    const/4 p4, 0x0

    cmpl-float v0, v5, p4

    if-eqz v0, :cond_1

    cmpl-float p4, v6, p4

    if-eqz p4, :cond_1

    int-to-double p3, p3

    const-wide v0, 0x3ff6666666666666L    # 1.4

    mul-double p3, p3, v0

    double-to-int p3, p3

    move v10, p3

    goto :goto_0

    :cond_1
    const/16 v10, 0xfa

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 880
    invoke-direct/range {v2 .. v10}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->animateVirtualPanelMove(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;FFFFFI)V

    :goto_1
    return-void
.end method

.method private reportNavigationMetrics(Ljava/lang/String;)V
    .locals 3

    .line 422
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "VirtualPanelHandler"

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 423
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->virtualPanelSessionReported:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 424
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->virtualPanelSessionReported:Z

    .line 425
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "VirtualPanelSession"

    invoke-virtual {p1, v2, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_0
    return-void
.end method

.method private square(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method


# virtual methods
.method public doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 7

    .line 187
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v1

    .line 194
    sget-object v2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v3, 0x1

    const-string v4, "VirtualPanelHandler"

    if-ne v1, v2, :cond_1

    .line 197
    invoke-direct {p0, p2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->exitVirtualPanel(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 198
    sget-object p1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    .line 199
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "ExitingVirtualPanelMode"

    invoke-virtual {p1, v4, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 200
    :cond_1
    sget-object v2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne v1, v2, :cond_2

    .line 201
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object v1

    .line 202
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSingleCenteredPage()Z

    move-result v2

    .line 204
    invoke-virtual {v1, p2, v3, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setUpGrid(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ZZ)V

    .line 207
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 207
    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->isValidLocationForGrid(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->enterVirtualPanel(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V

    .line 210
    sget-object p1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "EnteringVirtualPanelMode"

    invoke-virtual {p1, v4, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public firstPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 1

    .line 311
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->downEvent:Landroid/view/MotionEvent;

    .line 312
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 313
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->checkedSinceDownEventForSwipe:Z

    .line 314
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    .line 315
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->startedMoveSinceDown:Z

    :cond_0
    return v0
.end method

.method public getEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->EVENT_TYPES:Ljava/util/Collection;

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Lcom/amazon/kindle/mangaviewer/ViewModeChange;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/mangaviewer/ViewModeChange;

    .line 149
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->getMangaViewPager()Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->getNewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/16 v2, 0x8

    const-string v3, "VirtualPanelSessionTimer"

    if-ne p1, v1, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->displayToastIfNecessary(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    .line 152
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/16 p1, 0x8

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "VirtualPanelHandlerTimer"

    invoke-virtual {p1, v1, v3, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 159
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getLeftImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    .line 160
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getRightImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 163
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 165
    invoke-virtual {v1, v3, v3}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    :cond_1
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 170
    invoke-virtual {v0, v3, v3}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    :cond_2
    return-void
.end method

.method public keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 248
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0x14

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0x15

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0x16

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0x17

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0x42

    if-eq v0, v1, :cond_consume_key

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_consume_key

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 265
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    :cond_consume_key
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 7

    .line 270
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 271
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 276
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-string v4, "VirtualPanel_VolumeButtons"

    const-string v5, "VirtualPanelHandler"

    const/4 v6, 0x1

    const/16 v3, 0x17

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0x42

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    const/16 v3, 0x15

    if-eq v2, v3, :cond_keyboard_left

    const/16 v3, 0x16

    if-eq v2, v3, :cond_keyboard_right

    .line 277
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    const-string v4, "VirtualPanel_VolumeButtons"

    const-string v5, "VirtualPanelHandler"

    const/4 v6, 0x1

    const/16 v3, 0x17

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0x42

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_keyboard_show_overlays

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    const/16 v3, 0x15

    if-eq v2, v3, :cond_keyboard_left

    const/16 v3, 0x16

    if-eq v2, v3, :cond_keyboard_right

    const/16 v3, 0x18

    if-eq v2, v3, :cond_4

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_keyboard_show_overlays
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v6, v6}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v6

    :cond_keyboard_left
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result p1

    if-nez p1, :cond_keyboard_left_done

    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_keyboard_left_done
    return v6

    :cond_keyboard_right
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result p1

    if-nez p1, :cond_keyboard_right_done

    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_keyboard_right_done
    return v6

    .line 285
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result p1

    if-nez p1, :cond_3

    .line 286
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 287
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->isLeftToRight()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    .line 288
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    .line 289
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_3
    return v6

    .line 294
    :cond_4
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isInAnimation()Z

    move-result p1

    if-nez p1, :cond_6

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 296
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->isLeftToRight()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    .line 297
    :goto_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    .line 298
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_6
    return v6

    .line 306
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->keyUp(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public move(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 9

    .line 338
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->startedMoveSinceDown:Z

    if-nez p2, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->moveAfterDownStartTime:J

    .line 346
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->startedMoveSinceDown:Z

    .line 350
    :cond_1
    iget-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    if-eqz p2, :cond_3

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->moveAfterDownStartTime:J

    sget-wide v6, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->MAX_SWIPE_TIME:J

    add-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 352
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    goto :goto_0

    :cond_2
    return v0

    .line 361
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->checkedSinceDownEventForSwipe:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    if-nez p2, :cond_4

    return v1

    .line 367
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeDistanceFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_6

    .line 369
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->checkedSinceDownEventForSwipe:Z

    .line 370
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeXVelocityFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v2

    .line 371
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeYVelocityFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide v4

    .line 373
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->computeInchSpeedFromDownToEvent(Landroid/view/MotionEvent;)D

    move-result-wide p1

    sget v6, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->SWIPE_SPEED_THRESHOLD:F

    float-to-double v6, v6

    cmpl-double v8, p1, v6

    if-lez v8, :cond_5

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_5

    .line 375
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->probableSwipe:Z

    return v0

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 5

    .line 226
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object v2

    .line 235
    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isLeftSideTap(Landroid/view/MotionEvent;)Z

    move-result v3

    const-string v4, "VirtualPanel_Tap"

    if-eqz v3, :cond_1

    .line 236
    invoke-direct {p0, v4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->reportNavigationMetrics(Ljava/lang/String;)V

    .line 237
    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    move-result p1

    return p1

    .line 238
    :cond_1
    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isRightSideTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 239
    invoke-direct {p0, v4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->reportNavigationMetrics(Ljava/lang/String;)V

    .line 240
    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public swipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 4

    .line 396
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne p1, p2, :cond_3

    .line 397
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object p1

    .line 398
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p2

    .line 400
    invoke-direct {p0, p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->square(F)F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p0, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->square(F)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    if-eqz p2, :cond_2

    .line 402
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p4, p4, v1

    if-gtz p4, :cond_2

    sget p4, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->MIN_SWIPE_SPEED:F

    cmpg-float p4, v0, p4

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    const-string v0, "VirtualPanel_Swipe"

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    .line 411
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->reportNavigationMetrics(Ljava/lang/String;)V

    .line 412
    sget-object p3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p3, p5, p2, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    move-result p1

    return p1

    .line 414
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->reportNavigationMetrics(Ljava/lang/String;)V

    .line 415
    sget-object p3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-direct {p0, p3, p5, p2, p1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;->handleDirectionAction(Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Lcom/amazon/kindle/mangaviewer/BoundImageView;Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
