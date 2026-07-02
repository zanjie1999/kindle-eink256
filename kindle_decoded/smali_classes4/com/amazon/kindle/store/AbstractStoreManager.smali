.class public Lcom/amazon/kindle/store/AbstractStoreManager;
.super Lcom/amazon/kindle/krx/store/BaseStoreManager;
.source "AbstractStoreManager.java"


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;

    const-string v1, "StoreManager"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/store/AbstractStoreManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/krx/store/BaseStoreManager;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/store/AbstractStoreManager;->context:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/amazon/kindle/store/utils/PriceCache;->initPrefs()V

    return-void
.end method


# virtual methods
.method public borrowOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p3}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p4, p2, p5}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->borrowOfferFromAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    return-void
.end method

.method public buyOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p3}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p4, p2, p5}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->buyOfferFromAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    return-void
.end method

.method public downloadBook(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/store/AbstractStoreManager;->initiateBookDownload(Lcom/amazon/kindle/krx/content/IBook;)Z

    return-void
.end method

.method public downloadBookSample(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/store/AbstractStoreManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 60
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/store/AbstractStoreManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 59
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    return-void
.end method

.method public downloadBookSample(Ljava/lang/String;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/store/AbstractStoreManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 98
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/AbstractStoreManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    return-void
.end method

.method public executeBuy(Ljava/lang/String;Lcom/amazon/kindle/krx/store/BuyListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public executeUnbuy(Ljava/lang/String;Lcom/amazon/kindle/krx/store/BuyListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public varargs fetchPrice(Lcom/amazon/kindle/krx/store/PriceUpdateListener;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            ")V"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, p4}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/store/AbstractStoreManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, p4}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    return-void
.end method

.method public getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initiateBookDownload(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 11

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/store/AbstractStoreManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 73
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 74
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v2, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v2, :cond_3

    .line 76
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v2, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 85
    :goto_1
    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v8

    .line 87
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 85
    invoke-interface/range {v1 .. v10}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/AbstractStoreManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    .line 90
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/store/AbstractStoreManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1

    :cond_3
    return v3
.end method

.method public loadAuthorPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/store/AbstractStoreManager;->loadAuthorPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadAuthorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createAuthorPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 263
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 264
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadBrowseNode(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createBrowseNodeOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 240
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/store/AbstractStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1, p2}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadFeatureDoc(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createFeatureDocOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;

    move-result-object p1

    .line 248
    invoke-interface {p1, p4}, Lcom/amazon/kindle/store/FeatureDocStoreOpener;->setActionData(Ljava/util/Map;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;

    move-result-object p1

    .line 249
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 250
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p1

    .line 223
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p1

    .line 231
    invoke-interface {p1, p3, p4}, Lcom/amazon/kindle/store/BuyPageStoreOpener;->setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p1

    .line 232
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadSearchResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 215
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadStoreFront(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 207
    invoke-interface {v0, p1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public loadStoreUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public returnAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 1

    .line 180
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, p4}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->returnAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-void
.end method

.method public returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 7

    .line 172
    new-instance v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-direct {v0, p5}, Lcom/amazon/kindle/store/glide/GlideClientImpl;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/store/glide/GlideClientImpl;->returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-void
.end method
