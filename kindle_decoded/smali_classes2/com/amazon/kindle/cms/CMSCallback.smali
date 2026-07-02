.class public Lcom/amazon/kindle/cms/CMSCallback;
.super Ljava/lang/Object;
.source "CMSCallback.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CallbackEx;


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "CONTENT_OPEN"

.field private static final SYNC_TAG:Ljava/lang/String; = "DBSyncIssue"

.field private static final TAG:Ljava/lang/String;

.field private static final VERB_CAROUSEL_ADD:Ljava/lang/String; = "notify:carousel_add"

.field private static final VERB_CAROUSEL_REMOVE:Ljava/lang/String; = "notify:carousel_remove"

.field private static final VERB_FAVORITES_ADD:Ljava/lang/String; = "notify:favorites_add"

.field private static final VERB_FAVORITES_REMOVE:Ljava/lang/String; = "notify:favorites_remove"

.field private static final VERB_FIX_COVER:Ljava/lang/String; = "fix_cover"

.field private static final VERB_REMOVE_FROM_LIBRARY:Ljava/lang/String; = "remove_from_library"

.field private static instance:Lcom/amazon/kindle/cms/CMSCallback;


# instance fields
.field private cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

.field private context:Landroid/content/Context;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private readerController:Lcom/amazon/kcp/reader/IReaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/cms/CMSCallback;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/amazon/kindle/cms/CMSCallback;->instance:Lcom/amazon/kindle/cms/CMSCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/cms/CMSCallback;)Lcom/amazon/kcp/reader/IReaderController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/cms/CMSCallback;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-object p0
.end method

.method private handleAddToFavorites(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    if-nez v0, :cond_0

    .line 132
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string v0, "Could not get ILibraryController object"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 142
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_6

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-nez v0, :cond_3

    .line 146
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string v0, "Could not get ILibraryService object"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    :cond_3
    const/4 v1, 0x0

    .line 150
    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_5

    .line 152
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    sget-object v0, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get ContentMetadata object for book ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_4
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string v0, "Could not get ContentMetadata object for a book ID, it was null when querying library service"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 160
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/CMSCallback;->handleBookDownload(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p1

    return-object p1

    .line 164
    :cond_6
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1
.end method

.method private handleBookDownload(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    if-nez v0, :cond_0

    .line 169
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string v0, "Could not get IReaderController object"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-nez v0, :cond_1

    .line 174
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string v0, "Could not get ILibraryService object"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 178
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 179
    new-instance v1, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;

    const-string v2, "CmsCallback"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/amazon/kcp/library/ILibraryController;->checkForErrorAndDownloadBook(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    :goto_0
    return-object p1
.end method

.method private handleExplore(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 2

    .line 186
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-nez p1, :cond_0

    .line 188
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 191
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/store/ExploreUtils;->createExploreIntent(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/library/models/BookType;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 216
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1
.end method

.method private handleGoodreadsVerb(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 3

    .line 120
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kca://book:amzn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 127
    :cond_0
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1
.end method

.method private handleRemoveFromLibrary(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->revokeOwnership(Ljava/lang/String;Z)V

    .line 269
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1
.end method

.method private initReaderController()V
    .locals 2

    .line 430
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 431
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cms/CMSCallback;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 434
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 435
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    :cond_0
    return-void
.end method

.method private onVerbExecuteFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 410
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when performing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected for an item when performing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "open"

    .line 416
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 417
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "CONTENT_OPEN"

    const-string v2, "BookOpenFailure"

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 421
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 423
    iget-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    goto :goto_1

    .line 425
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->removeItem(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 440
    invoke-direct {p0}, Lcom/amazon/kindle/cms/CMSCallback;->initReaderController()V

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    return-void
.end method

.method private valid(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Callback "

    if-nez p1, :cond_0

    .line 248
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " passed empty libraryUri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 252
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " called with empty itemId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/cms/CMSCallback;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/VerbExtrasInterface;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/VerbExtrasInterface;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 5

    const-string p1, "CMSCallback.execute"

    const/4 p2, 0x1

    .line 275
    invoke-static {p1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback for itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    sget-object v0, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 280
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/kindle/cms/CMSCallback;->valid(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_19

    const-string p3, "open"

    .line 281
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CMSCallback.openBook()"

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_6

    .line 283
    sget-object p1, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/CMSCallback;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 285
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 286
    :cond_0
    sget-object p1, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/CMSCallback;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 288
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 289
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 290
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/CMSCallback;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 291
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 292
    :cond_2
    sget-object p1, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/CMSCallback;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 294
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    :cond_3
    if-eqz p6, :cond_5

    .line 298
    invoke-interface {p6}, Lcom/amazon/kindle/cms/api/VerbExtrasInterface;->getStartTime()J

    move-result-wide v3

    .line 299
    invoke-static {p4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, p4

    .line 301
    :goto_0
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p3

    const-string p5, "asin"

    .line 302
    invoke-virtual {p3, p5, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 303
    invoke-virtual {p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "touch-start-time="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p5, "CONTENT_OPEN"

    const-string p6, "BookOpenBegin"

    invoke-virtual {p1, p5, p6, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 309
    invoke-static {v2, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 311
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->context:Landroid/content/Context;

    const-class p3, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "key"

    .line 312
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.amazon.firelauncher.ACTION_START_TIME"

    .line 313
    invoke-virtual {p1, p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 316
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 317
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p1

    .line 320
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/cms/CMSCallback;->initReaderController()V

    .line 321
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p6, 0x0

    if-eqz p3, :cond_8

    .line 322
    invoke-static {p6, p4, v3, v4}, Lcom/amazon/kcp/library/BookOpenHelper;->openBook(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 323
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_1

    :cond_7
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 324
    :goto_1
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_8
    const-string p3, "download"

    .line 325
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 326
    invoke-direct {p0, p4}, Lcom/amazon/kindle/cms/CMSCallback;->handleBookDownload(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p2

    goto/16 :goto_3

    :cond_9
    const-string p3, "delete"

    .line 327
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18

    const-string p3, "archive"

    .line 328
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string p3, "cancel_download"

    .line 332
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 333
    sget-object p2, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Cancelling download for bookId "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {p2, p4}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    .line 335
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto/16 :goto_3

    :cond_b
    const-string p3, "keep_issue"

    .line 336
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 337
    iget-object p3, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {p3, p4, p2}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 338
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto/16 :goto_3

    :cond_c
    const-string/jumbo p3, "unkeep_issue"

    .line 343
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 344
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {p2, p4, v0}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 345
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto/16 :goto_3

    :cond_d
    const-string p3, "notify:favorites_add"

    .line 346
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 347
    invoke-direct {p0, p4}, Lcom/amazon/kindle/cms/CMSCallback;->handleAddToFavorites(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p2

    goto/16 :goto_3

    :cond_e
    const-string p3, "notify:favorites_remove"

    .line 348
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 350
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto/16 :goto_3

    :cond_f
    const-string p3, "notify:carousel_add"

    .line 351
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 352
    iget-object p3, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p4, p6, p2, v0}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 353
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->NotImplemented:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto/16 :goto_3

    :cond_10
    const-string p2, "notify:carousel_remove"

    .line 354
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 355
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p3, v0, v0}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 356
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {p2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_11

    .line 357
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 358
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance p3, Lcom/amazon/kindle/cms/CMSCallback$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/cms/CMSCallback$1;-><init>(Lcom/amazon/kindle/cms/CMSCallback;)V

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 365
    :cond_11
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_3

    :cond_12
    const-string p2, "explore"

    .line 366
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 369
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p2}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addStoreRedirectVerbsToCms()V

    .line 372
    invoke-direct {p0, p4}, Lcom/amazon/kindle/cms/CMSCallback;->handleExplore(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p2

    goto :goto_3

    :cond_13
    const-string/jumbo p2, "view_on_goodreads"

    .line 373
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 375
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p2}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addGoodreadsRedirectVerb()V

    .line 378
    invoke-direct {p0, p4}, Lcom/amazon/kindle/cms/CMSCallback;->handleGoodreadsVerb(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p2

    goto :goto_3

    :cond_14
    const-string p2, "fix_cover"

    .line 379
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 380
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 382
    invoke-static {p6}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p3

    .line 383
    sget-object p6, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p3, p2, p6, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    .line 384
    sget-object p6, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p3, p2, p6, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    .line 386
    :cond_15
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_3

    :cond_16
    const-string p2, "remove_from_library"

    .line 387
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 388
    invoke-direct {p0, p4}, Lcom/amazon/kindle/cms/CMSCallback;->handleRemoveFromLibrary(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;

    move-result-object p2

    goto :goto_3

    .line 390
    :cond_17
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->NotImplemented:Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_3

    .line 329
    :cond_18
    :goto_2
    iget-object p2, p0, Lcom/amazon/kindle/cms/CMSCallback;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const-string p3, "Library"

    invoke-interface {p2, p4, p3}, Lcom/amazon/kcp/library/ILibraryController;->deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 392
    :goto_3
    sget-object p3, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    if-ne p2, p3, :cond_1a

    .line 393
    invoke-direct {p0, p4, p5}, Lcom/amazon/kindle/cms/CMSCallback;->onVerbExecuteFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 396
    :cond_19
    sget-object p2, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 399
    :cond_1a
    :goto_4
    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p2
.end method

.method public onBookOpenFailure(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "BookOpenFailure"
    .end annotation

    const-string v0, "open"

    .line 406
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cms/CMSCallback;->onVerbExecuteFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sync(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;)V
    .locals 0

    .line 231
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 232
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string p2, "CMS Sync requested."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    .line 236
    iget-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->readDbAndFlushToCms()V

    .line 238
    iget-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addGoodreadsRedirectVerb()V

    .line 239
    iget-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    invoke-interface {p1}, Lcom/amazon/kindle/cms/IContentManagementSystem;->addStoreRedirectVerbsToCms()V

    goto :goto_0

    .line 241
    :cond_0
    sget-object p1, Lcom/amazon/kindle/cms/CMSCallback;->TAG:Ljava/lang/String;

    const-string p2, "CMS Client is null, module initialization failed or someone modified the callback"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
