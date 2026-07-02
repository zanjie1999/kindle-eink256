.class public Lcom/amazon/kindle/mangaviewer/MangaViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MangaViewPager.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventProvider;
.implements Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# static fields
.field private static ANIMATION_DURATION:I = 0x0

.field private static final DEFAULT_BUFFER_BLOCKOUT_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;

.field private static USE_CUSTOM_ANIMATION:Z


# instance fields
.field private animationDisabled:Z

.field private bufferedEvent:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;

.field private currentViewStartingScrollX:F

.field private final eventBroker:Lcom/amazon/kindle/event/EventBroker;

.field private eventReceptionThreshold:J

.field private firstX:F

.field private isInAnimation:Z

.field private lastX:F

.field private lockScroll:Z

.field private mCustomScroller:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

.field private mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final settings:Lcom/amazon/kindle/mangaviewer/MangaSettingsController;

.field private viewMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

.field private virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    .line 95
    sput v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->ANIMATION_DURATION:I

    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->USE_CUSTOM_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object p2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->viewMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->isInAnimation:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 55
    iput-wide v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    .line 59
    new-instance v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-direct {v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    .line 62
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->firstX:F

    .line 64
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->currentViewStartingScrollX:F

    .line 65
    iput-boolean p2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    .line 73
    new-instance v0, Lcom/amazon/kindle/event/EventBroker;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/event/EventBroker;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventBroker:Lcom/amazon/kindle/event/EventBroker;

    .line 75
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 83
    new-instance p2, Lcom/amazon/kindle/mangaviewer/MangaSettingsController;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/mangaviewer/MangaSettingsController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->settings:Lcom/amazon/kindle/mangaviewer/MangaSettingsController;

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->setScroller()V

    .line 85
    invoke-static {p1}, Lcom/amazon/kcp/util/DeviceUtils;->isEinkScreen(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->animationDisabled:Z

    return-void
.end method

.method private createPagerAdapter(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;
    .locals 2

    if-eqz p1, :cond_0

    .line 548
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onMultiWindowChange()V
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->onMultiWindowChange()V

    :cond_0
    return-void
.end method

.method private setScroller()V
    .locals 4

    .line 99
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "EnableMangaCustomAnimation"

    .line 101
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->USE_CUSTOM_ANIMATION:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    const-string v2, "MangaAnimationDuration"

    .line 104
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->ANIMATION_DURATION:I

    .line 107
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v3, "sInterpolator"

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    sget v3, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->ANIMATION_DURATION:I

    .line 113
    invoke-static {v2, v0, v3}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;->getDebugScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;I)Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->mCustomScroller:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

    .line 115
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public backwardOneItem()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public forwardOneItem()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;
    .locals 1

    .line 183
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    return-object v0
.end method

.method public getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 3

    const/4 v0, 0x0

    .line 327
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 328
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 329
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    return-object v0
.end method

.method public getLeftChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 3

    const/4 v0, 0x0

    .line 342
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getLeftChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getLeftChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMangaSettingsController()Lcom/amazon/kindle/mangaviewer/MangaSettingsController;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->settings:Lcom/amazon/kindle/mangaviewer/MangaSettingsController;

    return-object v0
.end method

.method public getRightChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 3

    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 359
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getRightChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getRightChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportedEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->MANGA_VIEWMODE_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->viewMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    return-object v0
.end method

.method public getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    return-object v0
.end method

.method public getVirtualPanelTipCountLimit()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public handlePositionJump()V
    .locals 1

    .line 433
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager$1;-><init>(Lcom/amazon/kindle/mangaviewer/MangaViewPager;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isInAnimation()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->isInAnimation:Z

    return v0
.end method

.method public isLeftSideTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 606
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 611
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/kmv/R$integer;->navigation_margin_percent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float v2, v2, v3

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isRightSideTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 617
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 622
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/kmv/R$integer;->navigation_margin_percent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float v2, v2, v3

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float v0, v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isScrollLocked()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    return v0
.end method

.method public isTopMarginTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityConfigurationChanged(Landroid/content/res/Configuration;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 566
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-eq p2, v1, :cond_0

    .line 567
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsContentOrientationLock()Z

    move-result p2

    if-nez p2, :cond_2

    .line 569
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->isOrientationChanged(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 570
    sget-object p1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    .line 572
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->setOrientation()V

    :cond_2
    return-void
.end method

.method public onActivityCreate(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)V
    .locals 1

    .line 533
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->createPagerAdapter(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 537
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->setCurrentItem(I)V

    .line 538
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->setOrientation()V

    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 4

    .line 553
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 555
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 556
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityModeChanged(Z)V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->onMultiWindowChange()V

    return-void
.end method

.method public onActivitySizeChanged()V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->onMultiWindowChange()V

    return-void
.end method

.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1

    .line 526
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 192
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->animationDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 222
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 224
    :catch_0
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot handle event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 216
    :goto_1
    iget v4, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v5

    .line 232
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->firstX:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 236
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v7, v8, :cond_4

    .line 237
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v6

    if-eqz v6, :cond_7

    return v2

    .line 241
    :cond_4
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v6

    if-eqz v6, :cond_7

    return v2

    .line 245
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->firstX:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 246
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-eq v7, v8, :cond_6

    .line 247
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v6

    if-eqz v6, :cond_7

    return v2

    .line 251
    :cond_6
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v6

    if-eqz v6, :cond_7

    return v2

    .line 259
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->currentViewStartingScrollX:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-ltz v8, :cond_8

    cmpl-float v8, v6, v7

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    .line 272
    :cond_8
    invoke-virtual {v5}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->isLeftPageAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    add-float/2addr v6, v4

    cmpg-float p1, v6, v7

    if-gez p1, :cond_9

    .line 274
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->currentViewStartingScrollX:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 279
    :cond_9
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    if-eqz p1, :cond_a

    .line 280
    invoke-virtual {v5}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePageViews()V

    .line 282
    :cond_a
    iput-boolean v2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    return v2

    :cond_b
    cmpl-float v0, v6, v7

    if-gtz v0, :cond_c

    if-nez v0, :cond_f

    if-eqz v3, :cond_f

    .line 287
    :cond_c
    invoke-virtual {v5}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->isRightPageAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    add-float/2addr v6, v4

    cmpl-float p1, v6, v7

    if-lez p1, :cond_d

    .line 289
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->currentViewStartingScrollX:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 293
    :cond_d
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    if-eqz p1, :cond_e

    .line 294
    invoke-virtual {v5}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePageViews()V

    .line 296
    :cond_e
    iput-boolean v2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    .line 298
    invoke-virtual {v5}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->repushLastCanceledNavigationRequest()V

    return v2

    .line 303
    :cond_f
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lockScroll:Z

    .line 306
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 205
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->lastX:F

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->firstX:F

    .line 209
    :cond_11
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public publishPageTurnAbortedEvent(Z)V
    .locals 4

    .line 474
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 477
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 478
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 481
    invoke-virtual {v1}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;->publish()V

    return-void
.end method

.method public registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventBroker:Lcom/amazon/kindle/event/EventBroker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method public resetStartScrollX()V
    .locals 1

    .line 322
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->currentViewStartingScrollX:F

    return-void
.end method

.method public setAnimationFinished()V
    .locals 3

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->isInAnimation:Z

    .line 390
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->bufferedEvent:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 394
    iput-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->bufferedEvent:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;

    .line 395
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->handleBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V

    :cond_0
    return-void
.end method

.method public setAnimationStarting(JZ)V
    .locals 4

    if-nez p3, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 371
    iput-wide p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    const-wide/16 v2, 0x1f4

    cmp-long p3, p1, v2

    if-gez p3, :cond_1

    add-long/2addr v0, p1

    .line 375
    iput-wide v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    goto :goto_0

    :cond_1
    add-long/2addr v0, v2

    .line 377
    iput-wide v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    :goto_0
    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->isInAnimation:Z

    return-void
.end method

.method public setBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V
    .locals 8

    .line 413
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 415
    rem-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 416
    iget-wide v6, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    rem-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v2, v4

    .line 417
    sget-object v4, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetBufferedEvent -- Current Time / Threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventReceptionThreshold:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 420
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->bufferedEvent:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;

    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 486
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->animationDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 491
    :cond_0
    sget-boolean v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->USE_CUSTOM_ANIMATION:Z

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->mCustomScroller:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

    if-nez v0, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->setScroller()V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->mCustomScroller:Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

    if-eqz v0, :cond_2

    .line 496
    sget v1, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->ANIMATION_DURATION:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;->setScrollDuration(I)V

    .line 499
    :cond_2
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setMangaListener(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    .line 409
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->viewMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->viewMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    .line 145
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventBroker:Lcom/amazon/kindle/event/EventBroker;

    new-instance v2, Lcom/amazon/kindle/event/Event;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/ViewModeChange;

    invoke-direct {v3, v0, p1, p0}, Lcom/amazon/kindle/mangaviewer/ViewModeChange;-><init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V

    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->MANGA_VIEWMODE_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v2, v3, v0}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/android/docviewer/PageZoomChangeEvent;

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/PageZoomChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->eventBroker:Lcom/amazon/kindle/event/EventBroker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method
