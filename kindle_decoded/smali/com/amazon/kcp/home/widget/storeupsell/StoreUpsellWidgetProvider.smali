.class public Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;
.super Ljava/lang/Object;
.source "StoreUpsellWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kindle/home/card/HomeCardBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

.field private homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

.field private iKindleObjectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private iLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

.field private isAuthenticated:Z

.field private isHomeFeedEmpty:Z

.field private rootView:Landroid/view/View;

.field private threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private widget:Lcom/amazon/kindle/home/card/HomeCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;-><init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->widget:Lcom/amazon/kindle/home/card/HomeCard;

    .line 74
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    .line 75
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->iKindleObjectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 76
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->iKindleObjectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->iLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 79
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->initializeCounter()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->iLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->bindWidgetView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindWidgetView(Landroid/view/View;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->rootView:Landroid/view/View;

    .line 165
    new-instance v0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;-><init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeCounter()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    const-string v1, "ALL_ITEMS"

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    :cond_0
    return-void
.end method

.method private isHomeFeedEmpty()Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->isAuthenticated:Z

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    invoke-interface {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->getHomeFeedState()Lcom/amazon/kcp/home/models/HomeFeed$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/home/models/HomeFeed$State;->EMPTY:Lcom/amazon/kcp/home/models/HomeFeed$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->isHomeFeedEmpty:Z

    .line 107
    iget-boolean v1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->isAuthenticated:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private isLibraryEmpty()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->initializeCounter()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private shouldShowWidget()Z
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->isHomeFeedEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->isLibraryEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateViewVisibility()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->shouldShowWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 137
    :goto_0
    new-instance v1, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;-><init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;I)V

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->shouldShowWidget()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->widget:Lcom/amazon/kindle/home/card/HomeCard;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->updateViewVisibility()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLibraryContentAdded(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->updateViewVisibility()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
