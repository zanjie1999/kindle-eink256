.class public Lcom/amazon/kindle/krx/ui/LibraryUIManager;
.super Lcom/amazon/kindle/krx/ui/BaseLibraryUIManager;
.source "LibraryUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;,
        Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private audioBookMetadataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

.field private audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

.field private final booksActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final collectionsClientSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            "Lcom/amazon/kindle/krx/collections/ICollectionsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final contextualActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final landingScreenActionProviderRegistry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyAndroidDeviceClassFactory:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyLibraryController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final leftNavProviderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;",
            ">;"
        }
    .end annotation
.end field

.field private libraryActionBarRefresher:Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;

.field private libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

.field private final libraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            ">;"
        }
    .end annotation
.end field

.field private libraryLeftNavRefresher:Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final newsstandActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final oldLibraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final readingListRecommendationProvderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;)V"
        }
    .end annotation

    .line 119
    const-class v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLibraryUIManager;-><init>()V

    .line 54
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->TAG:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->collectionsClientSet:Ljava/util/Map;

    .line 120
    new-instance v1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 121
    new-instance v1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->booksActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 122
    new-instance v1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->newsstandActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 123
    new-instance v1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->contextualActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 124
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->leftNavProviderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    new-instance v1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->oldLibraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    .line 126
    new-instance v1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    .line 127
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->readingListRecommendationProvderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->landingScreenActionProviderRegistry:Ljava/util/List;

    .line 130
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    .line 131
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyAndroidDeviceClassFactory:Ldagger/Lazy;

    .line 133
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public getActionButtonProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p1, v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->booksActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1

    .line 226
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p1, v0, :cond_1

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->newsstandActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object p1
.end method

.method public getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->audioBookMetadataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    return-object v0
.end method

.method public getAudioDownloadHandler()Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    return-object v0
.end method

.method public getCollectionsClient(Lcom/amazon/kindle/krx/collections/CollectionFilter;)Lcom/amazon/kindle/krx/collections/ICollectionsClient;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->collectionsClientSet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/collections/ICollectionsClient;

    return-object p1
.end method

.method public getContextualActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->contextualActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public bridge synthetic getLandingScreenActions(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/util/Collection;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->getLandingScreenActions(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLandingScreenActions(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ">;>;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->landingScreenActionProviderRegistry:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;

    .line 423
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLibraryDecorationProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;>;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->oldLibraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    return-object v0
.end method

.method public getLibraryDecorationProviderRegistryForSpecificView()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            ">;>;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    return-object v0
.end method

.method public getLibraryLeftNavProvidersByPriorityV2()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->leftNavProviderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    new-instance v1, Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$LibraryLeftNavProviderComparator;-><init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getReadingListRecommendationProvidersByPriority()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->readingListRecommendationProvderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 406
    new-instance v1, Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;-><init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public launchAppSettings()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->launchAppSettings()V

    return-void
.end method

.method public launchHelpAndFeedbackView(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->launchHelpAndFeedbackView(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public launchHelpAndFeedbackView(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyAndroidDeviceClassFactory:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHelpAndFeedbackActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/high16 v1, 0x10000000

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 274
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public launchLibrary()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->finishAndShowLandingPage()V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    :goto_0
    return-void
.end method

.method public launchLibrarySettings()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->launchLibrarySettings()V

    return-void
.end method

.method public launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method public launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V

    return-void
.end method

.method public launchReadingSettings()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->lazyLibraryController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->launchReadingSettings()V

    return-void
.end method

.method public refreshLandingScreenAction(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;-><init>(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public refreshLibraryActionBar()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryActionBarRefresher:Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;->onRefresh()V

    :cond_0
    return-void
.end method

.method public refreshLibraryCovers()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;->onRefresh()V

    :cond_0
    return-void
.end method

.method public refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;-><init>(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public refreshLibraryLeftNav()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryLeftNavRefresher:Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;->onRefresh()V

    :cond_0
    return-void
.end method

.method public registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->booksActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->newsstandActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")V"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p2, v0, :cond_0

    .line 208
    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->booksActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne p2, v0, :cond_1

    .line 210
    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->newsstandActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :goto_0
    return-void
.end method

.method public registerAudioBookMetadataProvider(Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->audioBookMetadataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    .line 139
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/krx/ui/AudioBookMetadataProviderRegisterEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/AudioBookMetadataProviderRegisterEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public registerAudioDownloadHandler(Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    return-void
.end method

.method public registerCollectionsClient(Lcom/amazon/kindle/krx/collections/ICollectionsClient;)V
    .locals 2

    .line 382
    sget-object v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    invoke-interface {p1}, Lcom/amazon/kindle/krx/collections/ICollectionsClient;->getCollectionsFilter()Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->collectionsClientSet:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/collections/ICollectionsClient;->getCollectionsFilter()Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Collections client not supported for EBOOK or PERIODICAL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->contextualActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerLandingScreenActionProvider(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->landingScreenActionProviderRegistry:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;-><init>(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public registerLibraryActionBarRefresher(Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryActionBarRefresher:Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;

    return-void
.end method

.method public registerLibraryCoversRefresher(Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

    return-void
.end method

.method public registerLibraryDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->oldLibraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerLibraryDecorationProviderForSpecificView(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryDecorationProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;-><init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)V

    return-void
.end method

.method public registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->leftNavProviderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerLibraryLeftNavRefresher(Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->libraryLeftNavRefresher:Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;

    return-void
.end method

.method public registerReadingListRecommendationProvider(Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;->readingListRecommendationProvderRegistry:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
