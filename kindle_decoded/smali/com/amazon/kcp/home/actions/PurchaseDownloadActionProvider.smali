.class public final Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;
.super Ljava/lang/Object;
.source "PurchaseDownloadActionProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionProvider;


# instance fields
.field private final actionKey:Ljava/lang/String;

.field private final downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v1, "PurchaseDownloadActionProvider"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v0, "PURCHASE_DOWNLOAD"

    .line 43
    iput-object v0, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->actionKey:Ljava/lang/String;

    return-void
.end method

.method private final animateBookOpen(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 6

    .line 91
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v3, "Utils.getFactory()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v3, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 95
    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v5, -0x1

    .line 94
    invoke-interface {v1, v3, v4, v5}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    new-instance v3, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;-><init>(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 50
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "reftag"

    .line 51
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "asin"

    .line 52
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    .line 54
    invoke-static {p3}, Lcom/amazon/kcp/library/HomeUtils;->bookIdForAsin(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    const-string v5, "Utils.getFactory()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    .line 57
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    const-string v6, "libraryService"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p3, v6}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p3

    if-nez p3, :cond_3

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const-class p3, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {p3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz p3, :cond_5

    .line 67
    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/amazon/kcp/library/HomeUtils;->formatUrl(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p3

    .line 68
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p3

    .line 69
    invoke-interface {p3, v2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p3

    .line 70
    invoke-interface {p3}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open URL: url="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; reftag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.amazon.kcp.home.actions.PurchaseDownloadActionProvider"

    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 62
    invoke-interface {p4, p1, p2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 74
    :cond_3
    invoke-virtual {p3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    const-string v1, "content.state"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-direct {p0, p3}, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->animateBookOpen(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_1

    .line 77
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    invoke-interface {v0, p3, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 81
    invoke-interface {p4, p1, p2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public getActionKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->actionKey:Ljava/lang/String;

    return-object v0
.end method
