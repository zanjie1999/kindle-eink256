.class public final Lcom/amazon/kcp/oob/NavigationController;
.super Ljava/lang/Object;
.source "NavigationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;,
        Lcom/amazon/kcp/oob/NavigationController$TabHandle;,
        Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;,
        Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;
    }
.end annotation


# static fields
.field private static final PERF_MARKER_END:I = 0x1

.field private static final PERF_MARKER_START:I

.field private static final TAG:Ljava/lang/String;

.field private static isTabPreactivationEnabled:Z


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final bottomBar:Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

.field private final bottomBarMiddleViewIndex:I

.field private currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

.field private isPreactivationCompleted:Z

.field private isResumed:Z

.field private final screenletContainer:Landroid/view/ViewGroup;

.field private searchTopBarView:Landroid/view/View;

.field final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

.field private final tabHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/oob/NavigationController$TabHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/oob/NavigationController;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/amazon/kcp/oob/NavigationController;->isTabPreactivationEnabled:Z

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/library/ui/bottombar/BottomBar;Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/theme/Theme;Landroidx/appcompat/widget/Toolbar;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 111
    iput-object p2, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBar:Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

    .line 112
    iput-object p6, p0, Lcom/amazon/kcp/oob/NavigationController;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 113
    iput-object p4, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const/4 p6, 0x0

    const-string v0, "navigation_preferences"

    invoke-virtual {p4, v0, p6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kcp/oob/NavigationController;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 115
    new-instance p4, Lcom/amazon/kcp/oob/NavigationController$1;

    invoke-direct {p4, p0, p1, p5}, Lcom/amazon/kcp/oob/NavigationController$1;-><init>(Lcom/amazon/kcp/oob/NavigationController;Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kindle/krx/theme/Theme;)V

    iput-object p4, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    .line 129
    invoke-static {p4}, Lcom/amazon/kcp/oob/LandingScreenTabsKt;->discoverAndSort(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/oob/NavigationController;->buildTabHandles(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    .line 132
    iget-object p5, p4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {p5, v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->isEnabled(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z

    move-result p5

    if-eqz p5, :cond_0

    add-int/lit8 p6, p6, 0x1

    .line 134
    iget-object p5, p4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {p5, v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getIcon(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object v0, p4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p4, p4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {p4, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->isActivated(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z

    move-result p4

    invoke-virtual {p2, p5, v0, p4}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 138
    :cond_1
    div-int/lit8 p6, p6, 0x2

    iput p6, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBarMiddleViewIndex:I

    .line 139
    invoke-virtual {p2, p3, p6}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->addItem(Landroid/view/View;I)V

    .line 140
    new-instance p1, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;-><init>(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$1;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->setBottomBarListener(Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;)V

    .line 141
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/oob/NavigationController;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/amazon/kcp/oob/NavigationController;->isPreactivationCompleted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kcp/oob/NavigationController$TabHandle;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/oob/NavigationController;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/amazon/kcp/oob/NavigationController;->isPreactivationCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/oob/NavigationController;->switchToTab(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/oob/NavigationController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateNavigateUpButtonVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/oob/NavigationController;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/amazon/kcp/oob/NavigationController;->isResumed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/oob/NavigationController;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/oob/NavigationController;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;ZLcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/oob/NavigationController;->createScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;ZLcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/oob/NavigationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/oob/NavigationController;I)I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->tabIndexFromItemIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->handleTabReselected(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method

.method private activateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 1

    .line 598
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_0

    .line 601
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 602
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/Screenlet;->onActivate()V

    .line 604
    :cond_0
    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onResume()V

    return-void
.end method

.method private static buildTabHandles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/oob/NavigationController$TabHandle;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 148
    new-instance v2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/oob/NavigationController$TabHandle;-><init>(Lcom/amazon/kindle/krx/ui/LandingScreenTab;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private canGoBack()Z
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    .line 545
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/Screenlet;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private createScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;ZLcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 1

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/oob/NavigationController;->newScreenletHandle(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;)Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    move-result-object v0

    .line 569
    iget-object p2, p2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {p2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 572
    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/NavigationController;->preactivateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/amazon/kcp/oob/NavigationController;->activateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 577
    :goto_0
    iget-object p2, v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    return-void
.end method

.method private deactivateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 608
    sget-object p2, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/ui/LibraryToast;->hide()V

    .line 609
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/Screenlet;->onPause()V

    .line 610
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/Screenlet;->onDeactivate()V

    .line 611
    iget-object p2, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private destroyScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 1

    .line 590
    iget-object p2, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 591
    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onDestroy()V

    return-void
.end method

.method private doSwitchToTabIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    if-eq p1, v0, :cond_0

    .line 553
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    :cond_0
    return-void
.end method

.method private ensureSearchBoxInitialized()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->searchTopBarView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 630
    const-class v0, Lcom/amazon/kcp/oob/TopBarViewFactory;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/TopBarViewFactory;

    if-eqz v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Lcom/amazon/kcp/oob/MainActivity;

    iget-object v2, p0, Lcom/amazon/kcp/oob/NavigationController;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/oob/TopBarViewFactory;->createTopBarView(Lcom/amazon/kcp/oob/MainActivity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->searchTopBarView:Landroid/view/View;

    goto :goto_0

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No top bar view found - required if a Screenlet returns HeaderMode.SEARCH_BOX from its getHeaderMode() method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getLastTabSelectedId()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_tab_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goBack(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    .line 488
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    .line 489
    iget-object v2, v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/Screenlet;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    iget-object p1, v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onGoBack()V

    goto :goto_0

    .line 491
    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 492
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/oob/NavigationController;->destroyScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 493
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 495
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->activateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 498
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader()V

    .line 499
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateNavigateUpButtonVisibility()V

    return-void
.end method

.method private goBackToBeginning(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 514
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    if-eq v2, p1, :cond_2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/oob/NavigationController;->deactivateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    const/4 v0, 0x1

    .line 519
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->doSwitchToTabIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;)V

    .line 521
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    .line 522
    :goto_2
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 523
    invoke-interface {p1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-object v0, p2

    .line 524
    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/oob/NavigationController;->destroyScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 525
    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_2

    .line 529
    :cond_4
    invoke-interface {p1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    if-eqz v0, :cond_5

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/oob/NavigationController;->activateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 534
    :cond_5
    iget-object p2, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/Screenlet;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 535
    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onGoBackToBeginning()V

    .line 538
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader()V

    .line 539
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateNavigateUpButtonVisibility()V

    return-void
.end method

.method private handleBackPressed(Lcom/amazon/kindle/krx/ui/ScreenletReason;)Z
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->goBack(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private handleIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    const-string v0, "TabId"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenletIntent"

    .line 304
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    .line 310
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/oob/NavigationController;->tabIndexFromTabId(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "], aborting..."

    if-gez v2, :cond_1

    .line 312
    sget-object p1, Lcom/amazon/kcp/oob/NavigationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finding tab for tabId ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 316
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    .line 317
    iget-object v5, v4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v6, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v5

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 319
    sget-object v0, Lcom/amazon/kcp/oob/NavigationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent screenletType ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] does not match root intent screenletType ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v5}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 319
    invoke-static {v0, p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBar:Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/oob/NavigationController;->itemIndexFromTabIndex(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->selectButtonAt(IZ)V

    .line 327
    iget-object v1, v4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v5

    .line 328
    :goto_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_INTENT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-direct {p0, v4, p1, v1}, Lcom/amazon/kcp/oob/NavigationController;->switchToTab(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    goto :goto_1

    .line 330
    :cond_4
    sget-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_INTENT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-direct {p0, v4, v1}, Lcom/amazon/kcp/oob/NavigationController;->goBackToBeginning(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 331
    iget-object v1, v4, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    iget-object v1, v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    .line 332
    sget-object v2, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_INTENT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/Screenlet;->onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    if-eqz p1, :cond_5

    .line 334
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method private handleTabReselected(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 3

    .line 394
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->goBackToBeginning(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    .line 398
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isShowLastTabFeatureOn()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->show_last_opened_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private logTabChangePerfMarkerIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kcp/oob/NavigationController$TabHandle;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 414
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAB_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 415
    invoke-static {p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAB_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 416
    invoke-static {p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p3

    :goto_0
    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    .line 419
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sourceTab"

    .line 418
    invoke-virtual {p3, v0, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 421
    :cond_1
    iget-object p1, p2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object p2, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    .line 422
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "targetTab"

    .line 421
    invoke-virtual {p3, p2, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 423
    invoke-virtual {p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    return-void
.end method

.method static newIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/ui/ScreenletIntent;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    const-string p0, "TabId"

    .line 286
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p0, "ScreenletIntent"

    .line 288
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private newScreenletHandle(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;)Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;
    .locals 3

    .line 582
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v2, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;

    invoke-direct {v2, p0, p2, v1}, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;-><init>(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$TabHandle;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/ScreenletType;->createInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object p2

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    invoke-direct {v1, p1, p2, v0}, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/Screenlet;Landroid/view/View;)V

    return-object v1
.end method

.method private persistLastTabVisited(Lcom/amazon/kcp/oob/NavigationController$TabHandle;)V
    .locals 2

    .line 388
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->isShowLastTabFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "last_tab_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private preactivateEligibleTabsWithDelayIfNecessary()V
    .locals 5

    .line 200
    iget-boolean v0, p0, Lcom/amazon/kcp/oob/NavigationController;->isPreactivationCompleted:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/oob/NavigationController;->isTabPreactivationEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->preactivation_delay_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/amazon/kcp/oob/NavigationController$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/oob/NavigationController$2;-><init>(Lcom/amazon/kcp/oob/NavigationController;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private preactivateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;)V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->screenletContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 616
    iget-object v0, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onActivate()V

    return-void
.end method

.method private resetAllTabsOnDeregister()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    .line 473
    iget-object v1, v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    .line 474
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 475
    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    sget-object v3, Lcom/amazon/kindle/krx/ui/ScreenletReason;->LOGOUT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/oob/NavigationController;->destroyScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 476
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCustomViewOnActionBar(Landroidx/appcompat/app/ActionBar;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    if-eqz p2, :cond_0

    .line 646
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->search_box_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->search_box_margin_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 648
    new-instance v2, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 649
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 651
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private switchToTab(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    invoke-direct {p0, v0, p3}, Lcom/amazon/kcp/oob/NavigationController;->deactivateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->doSwitchToTabIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;)V

    if-eqz p2, :cond_2

    .line 440
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/amazon/kcp/oob/NavigationController;->createScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;ZLcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 441
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "title"

    .line 442
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 443
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader()V

    goto :goto_0

    .line 448
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/oob/NavigationController;->activateScreenlet(Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    .line 449
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader()V

    .line 452
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->updateNavigateUpButtonVisibility()V

    return-void
.end method

.method private tabIndexFromItemIndex(I)I
    .locals 1

    .line 360
    iget v0, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBarMiddleViewIndex:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private tabIndexFromTabId(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v1, v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private updateHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/NavigationController;->updateHeader(Ljava/lang/String;)V

    return-void
.end method

.method private updateHeader(Ljava/lang/String;)V
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 662
    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v1, v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    iget-object v1, v1, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    .line 663
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/Screenlet;->getHeaderMode()Lcom/amazon/kindle/krx/ui/HeaderMode;

    move-result-object v2

    .line 665
    sget-object v3, Lcom/amazon/kcp/oob/NavigationController$3;->$SwitchMap$com$amazon$kindle$krx$ui$HeaderMode:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->ensureSearchBoxInitialized()V

    .line 675
    iget-object v2, p0, Lcom/amazon/kcp/oob/NavigationController;->searchTopBarView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/oob/NavigationController;->setCustomViewOnActionBar(Landroidx/appcompat/app/ActionBar;Landroid/view/View;)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/amazon/kcp/oob/NavigationController;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/ui/Screenlet;->createCustomHeaderView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/oob/NavigationController;->setCustomViewOnActionBar(Landroidx/appcompat/app/ActionBar;Landroid/view/View;)V

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v2, 0x0

    .line 668
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :goto_0
    if-nez p1, :cond_2

    .line 684
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/Screenlet;->getHeaderTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 688
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_1
    return-void

    .line 659
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No supportActionBar found - required on the activity that launches the NavigationController."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateNavigateUpButtonVisibility()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method getCurrentTabMetricsTag()Ljava/lang/String;
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getCurrentTabTitle()Ljava/lang/String;
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method handleTabSelected(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kcp/oob/NavigationController;->logTabChangePerfMarkerIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kcp/oob/NavigationController$TabHandle;I)V

    .line 381
    iget-object v1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v2, p0, Lcom/amazon/kcp/oob/NavigationController;->tabContext:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kcp/oob/NavigationController;->switchToTab(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    const/4 p2, 0x1

    .line 383
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/oob/NavigationController;->logTabChangePerfMarkerIfNecessary(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kcp/oob/NavigationController$TabHandle;I)V

    .line 384
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->persistLastTabVisited(Lcom/amazon/kcp/oob/NavigationController$TabHandle;)V

    return-void
.end method

.method isEligibleToShowLastPersistedTab()Z
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->isShowLastTabFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_tab_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method itemIndexFromTabIndex(I)I
    .locals 1

    .line 365
    iget v0, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBarMiddleViewIndex:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 462
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->resetAllTabsOnDeregister()V

    :cond_0
    return-void
.end method

.method onBackPressed()Z
    .locals 1

    .line 257
    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BACK_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/NavigationController;->handleBackPressed(Lcom/amazon/kindle/krx/ui/ScreenletReason;)Z

    move-result v0

    return v0
.end method

.method onNavigateUpPressed()Z
    .locals 1

    .line 265
    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->NAVIGATE_UP_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/NavigationController;->handleBackPressed(Lcom/amazon/kindle/krx/ui/ScreenletReason;)Z

    move-result v0

    return v0
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->handleIntent(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/amazon/kcp/oob/NavigationController;->isResumed:Z

    return-void
.end method

.method onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "CurrentTabId"

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/oob/NavigationController;->tabIndexFromTabId(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/oob/NavigationController;->startActivityAtTabIndex(I)V

    move-object v0, p1

    :cond_0
    if-nez v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->handleIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/amazon/kcp/oob/NavigationController;->isEligibleToShowLastPersistedTab()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->getLastTabSelectedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/oob/NavigationController;->tabIndexFromTabId(Ljava/lang/String;I)I

    move-result v0

    .line 175
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/oob/NavigationController;->startActivityAtTabIndex(I)V

    :cond_3
    return-void
.end method

.method onResume()V
    .locals 2

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/amazon/kcp/oob/NavigationController;->isResumed:Z

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/Screenlet;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/amazon/kcp/oob/NavigationController;->preactivateEligibleTabsWithDelayIfNecessary()V

    .line 242
    invoke-static {}, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->getInstance()Lcom/amazon/kcp/application/AppOpenFastMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/oob/NavigationController;->getCurrentTabMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/AppOpenFastMetrics;->onLibraryViewShown(Ljava/lang/String;)V

    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->currentTabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentTabId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method startActivityAtTabIndex(I)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->bottomBar:Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/oob/NavigationController;->itemIndexFromTabIndex(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;->selectButtonAt(IZ)V

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController;->tabHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_START:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/oob/NavigationController;->handleTabSelected(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method
