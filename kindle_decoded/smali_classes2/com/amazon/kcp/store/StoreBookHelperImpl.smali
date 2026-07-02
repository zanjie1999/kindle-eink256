.class public final Lcom/amazon/kcp/store/StoreBookHelperImpl;
.super Ljava/lang/Object;
.source "StoreBookHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/store/StoreBookHelper;


# instance fields
.field private final downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;

    const-string v1, "StoreBookHelper"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreBookHelperImpl;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;

    return-void
.end method

.method private final getLocalOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;
    .locals 1

    .line 117
    new-instance v0, Lcom/amazon/kcp/store/StoreBookHelperImpl$getLocalOpenMetrics$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreBookHelperImpl$getLocalOpenMetrics$1;-><init>()V

    return-object v0
.end method

.method private final getRemoteOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;
    .locals 1

    .line 109
    new-instance v0, Lcom/amazon/kcp/store/StoreBookHelperImpl$getRemoteOpenMetrics$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreBookHelperImpl$getRemoteOpenMetrics$1;-><init>()V

    return-object v0
.end method

.method private final getSyncNeededMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;
    .locals 1

    .line 98
    new-instance v0, Lcom/amazon/kcp/store/StoreBookHelperImpl$getSyncNeededMetrics$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreBookHelperImpl$getSyncNeededMetrics$1;-><init>()V

    return-object v0
.end method

.method private final getSyncValidation()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;
    .locals 1

    .line 129
    new-instance v0, Lcom/amazon/kcp/store/StoreBookHelperImpl$getSyncValidation$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreBookHelperImpl$getSyncValidation$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public oneTapBookOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "originator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromStore()V

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p6, :cond_4

    .line 67
    :cond_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 68
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    if-eqz v2, :cond_3

    .line 69
    new-instance v7, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;

    invoke-direct {v7}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;-><init>()V

    .line 70
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-static {p3}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    const-string v3, "Utils.getFactory().libraryService"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v3, "it"

    .line 73
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    const-string v4, "it.state"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    sget-object v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreBookHelperImpl;->getLocalOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreBookHelperImpl;->getRemoteOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/amazon/kcp/library/ILibraryController;->getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    sget-object p2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreBookHelperImpl;->getSyncValidation()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V

    .line 81
    sget-object p2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreBookHelperImpl;->getRemoteOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 82
    sget-object p2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreBookHelperImpl;->getSyncNeededMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 83
    new-instance p2, Lcom/amazon/kcp/store/SDPBook;

    invoke-direct {p2, v0, p5, p4, p6}, Lcom/amazon/kcp/store/SDPBook;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;Ljava/lang/String;Z)V

    :goto_1
    move-object v3, p2

    const/4 v5, 0x0

    const-string v6, "SDP"

    move-object v4, p1

    .line 85
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V

    return v1

    .line 87
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/store/StoreBookHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BookOpenManager unavailable"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public openBook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "originator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromStore()V

    .line 47
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreBookHelperImpl;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$STORE;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public syncAndDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->syncAndDownload(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
