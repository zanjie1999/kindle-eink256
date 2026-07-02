.class public Lcom/amazon/kindle/tutorial/BrochureActivity;
.super Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;
.source "BrochureActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private doneButton:Landroid/view/View;

.field private enableSmoothScroll:Z

.field private lastPageSelected:I

.field private lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

.field private nextButton:Landroid/view/View;

.field private pageIndicator:Lcom/amazon/kcp/reader/ui/IPageIndicator;

.field private pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

.field private prevButton:Landroid/view/View;

.field private scrollStateChanged:Z

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/BrochureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->enableSmoothScroll:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->scrollStateChanged:Z

    .line 64
    iput v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lastPageSelected:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/tutorial/BrochureActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/tutorial/BrochureActivity;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/tutorial/BrochureActivity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/BrochureActivity;->handleAction(Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    return-void
.end method

.method private handleAction(Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 5

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/BrochureActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kindle/tutorial/BrochureActivity$7;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 2

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v0

    .line 181
    :goto_0
    new-instance v1, Lcom/amazon/kindle/tutorial/BrochureActivity$6;

    invoke-direct {v1, p0, p3, v0}, Lcom/amazon/kindle/tutorial/BrochureActivity$6;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;Ljava/lang/Runnable;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 192
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public static newIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/BrochureUI;)Landroid/content/Intent;
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 1

    .line 318
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 319
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;->recordDay1BrochureMetric(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized navigateNext(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V
    .locals 8

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 217
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_0

    const-string p1, "Ignoring attempt to navigate past end. Current page %d of %d."

    new-array v4, v4, [Ljava/lang/Object;

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 219
    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v6}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v6

    sget-object v7, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->ADVANCE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v5, v6, v7}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    if-eqz p1, :cond_1

    .line 226
    sget-object v5, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {p1, v5, v6}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v1

    iget-boolean v6, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->enableSmoothScroll:Z

    invoke-virtual {p1, v5, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const-string p1, "Navigating next. New page is %d of %d."

    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr v0, v1

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized navigatePrevious(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V
    .locals 7

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 237
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "Ignoring attempt to navigate before start. Current page 1 of %d."

    new-array v0, v1, [Ljava/lang/Object;

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v5}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v5

    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->PREVIOUS:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v4, v5, v6}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    if-eqz p1, :cond_1

    .line 245
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v4, v5}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    sub-int/2addr v4, v1

    iget-boolean v5, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->enableSmoothScroll:Z

    invoke-virtual {p1, v4, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const-string p1, "Navigating previous. New page is %d of %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBackPressed()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->CLOSE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    if-eqz v0, :cond_0

    .line 160
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_BACK_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget p1, Lcom/amazon/kindle/krl/R$layout;->brochure_tutorial:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "userInterface"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/BrochureUI;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->disable_smooth_scroll:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->enableSmoothScroll:Z

    .line 85
    new-instance v0, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/tutorial/model/BrochureUI;)V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    .line 86
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_view_pager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 87
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lastPageSelected:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 91
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getCurrentLifecycleListener()Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 93
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_button_prev:I

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getPrevButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/BrochureActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/tutorial/BrochureActivity$1;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->prevButton:Landroid/view/View;

    .line 100
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_button_next:I

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getNextButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/BrochureActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/tutorial/BrochureActivity$2;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->nextButton:Landroid/view/View;

    .line 107
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_button_done:I

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getDoneButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/BrochureActivity$3;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/tutorial/BrochureActivity$3;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->doneButton:Landroid/view/View;

    .line 118
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_x_button:I

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getXButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/BrochureActivity$4;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/tutorial/BrochureActivity$4;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;

    .line 129
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/IPageIndicator;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pageIndicator:Lcom/amazon/kcp/reader/ui/IPageIndicator;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getPages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/IPageIndicator;->setItemCount(I)V

    .line 132
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->updateNavigation()V

    .line 134
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-static {p0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->extendActivityIntoDisplayCutout(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Lcom/amazon/kindle/tutorial/BrochureActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/BrochureActivity$5;-><init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 308
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->scrollStateChanged:Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 286
    iget v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lastPageSelected:I

    if-eq p1, v0, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->scrollStateChanged:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    if-le p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->ADVANCE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    if-eqz v0, :cond_1

    .line 291
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->PREVIOUS:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lifecycleListener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    if-eqz v0, :cond_1

    .line 296
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->scrollStateChanged:Z

    .line 301
    iput p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->lastPageSelected:I

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->updateNavigation()V

    return-void
.end method

.method updateNavigation()V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 256
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pagerAdapter:Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    .line 259
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->pageIndicator:Lcom/amazon/kcp/reader/ui/IPageIndicator;

    iget-object v4, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/ui/IPageIndicator;->setSelectedItem(I)V

    .line 262
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->prevButton:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->nextButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->doneButton:Landroid/view/View;

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_2

    .line 273
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->VIEW:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kindle/tutorial/BrochureActivity;->recordCMXBrochureFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    return-void
.end method
