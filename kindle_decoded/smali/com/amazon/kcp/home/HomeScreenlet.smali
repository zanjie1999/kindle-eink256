.class public final Lcom/amazon/kcp/home/HomeScreenlet;
.super Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.source "HomeScreenlet.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# static fields
.field private static final BOOK_OPEN_ASIN_EXTRA:Ljava/lang/String; = "BookOpenAsinExtraKey"

.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;


# instance fields
.field private final fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private swipeRefreshHelper:Lcom/amazon/kcp/home/HomeRefreshControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v1, "Screenlet"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/home/HomeScreenlet;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/home/HomeScreenlet;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 44
    new-instance v0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/home/HomeScreenlet;)Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    return-object p0
.end method

.method static newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/kcp/home/HomeScreenlet;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/HomeScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-object v0
.end method

.method static newIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 59
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/home/HomeScreenletType;->INSTANCE:Lcom/amazon/kcp/home/HomeScreenletType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;)V

    return-object v0
.end method

.method public static newOpenBookIntent(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BookOpenAsinExtraKey"

    .line 65
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/home/HomeScreenletType;->INSTANCE:Lcom/amazon/kcp/home/HomeScreenletType;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 155
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public onActivate()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/HomeActivatedEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/event/HomeActivatedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    sget v3, Lcom/amazon/kcp/home/R$id;->home_screenlet_root:I

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 98
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 100
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 72
    sget v0, Lcom/amazon/kcp/home/R$layout;->home_screenlet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/home/R$id;->pull_to_refresh_container:I

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 75
    const-class v2, Lcom/amazon/kcp/home/HomeScreenlet;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/home/HomeScreenlet$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/home/HomeScreenlet$1;-><init>(Lcom/amazon/kcp/home/HomeScreenlet;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/kcp/home/HomeRefreshControl;-><init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/home/HomeRefreshControl$Listener;)V

    iput-object p2, p0, Lcom/amazon/kcp/home/HomeScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/home/HomeRefreshControl;

    return-object p1
.end method

.method public onDeactivate()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/HomeRefreshControl;->onDeactivate()V

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    sget v3, Lcom/amazon/kcp/home/R$id;->home_screenlet_root:I

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 109
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/HomeRefreshControl;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BookOpenAsinExtraKey"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/home/HomeScreenlet;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    :cond_1
    return-void
.end method

.method public onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->onReSelected()V

    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 0

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kcp/home/HomeScreenlet;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->HOME_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v3, v2}, Lcom/amazon/kcp/library/SeriesScreenlet;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    :cond_0
    return-void
.end method
