.class public Lcom/amazon/kindle/cover/CoverImageService;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverImageService;


# static fields
.field private static final IS_PDOC_COVER_UPDATED_KEY:Ljava/lang/String; = "isPDocCoverUpdated"

.field private static final RETRY_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String;

.field private static final coversInFlight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

.field private volatile coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

.field private final coverFilenamerLock:Ljava/lang/Object;

.field private final coverLoadingTaskManager:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

.field private coverMetadataProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/ICoverMetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final coverProviderManager:Lcom/amazon/kindle/cover/CoverProviderManager;

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/ICoverDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private isBlocking:Z

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/amazon/kindle/cover/CoverImageService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamerLock:Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    .line 126
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createImageSizes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    .line 128
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/cover/db/CoverDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/cover/db/CoverDBHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/amazon/kindle/cover/ICoverDecorator;

    .line 130
    new-instance v3, Lcom/amazon/kcp/cover/TitleDecorator;

    invoke-direct {v3}, Lcom/amazon/kcp/cover/TitleDecorator;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/amazon/kcp/cover/SubTitleDecorator;

    invoke-direct {v3}, Lcom/amazon/kcp/cover/SubTitleDecorator;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/amazon/kcp/cover/NewspaperDateDecorator;

    invoke-direct {v3}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->decorators:Ljava/util/List;

    .line 131
    iput-boolean v5, p0, Lcom/amazon/kindle/cover/CoverImageService;->isBlocking:Z

    .line 132
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-array v1, v1, [Lcom/amazon/kindle/cover/ICoverProvider;

    .line 134
    new-instance v2, Lcom/amazon/kcp/cover/WebserviceCoverProvider;

    iget-object v3, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;

    .line 136
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;-><init>(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kcp/library/IAndroidLibraryController;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/amazon/kcp/cover/DefaultCoverProvider;

    invoke-direct {v2}, Lcom/amazon/kcp/cover/DefaultCoverProvider;-><init>()V

    aput-object v2, v1, v6

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/amazon/kindle/cover/CoverProviderManager;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/cover/CoverProviderManager;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverProviderManager:Lcom/amazon/kindle/cover/CoverProviderManager;

    .line 140
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/cover/CoverImageService;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 141
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->executor:Ljava/util/concurrent/Executor;

    .line 142
    new-instance p1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;-><init>(Lcom/amazon/kindle/network/INetworkService;)V

    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverLoadingTaskManager:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->init(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/amazon/kindle/cover/CoverImageService;->ensureRequiredFields()V

    .line 146
    invoke-direct {p0}, Lcom/amazon/kindle/cover/CoverImageService;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/cover/CoverImageService;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/cover/CoverImageService;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/cover/CoverImageService;->updatePDocCovers()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/cover/CoverImageService;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/cover/CoverImageService;->updateCovers()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/cover/CoverImageService;)Lcom/amazon/kindle/cover/db/CoverDBHelper;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/cover/CoverImageService;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->createKey(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/cover/CoverImageService;->fetchCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createKey(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decorateCover(Lcom/amazon/kindle/cover/ICoverBuilder;)V
    .locals 2

    .line 876
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->canBeDecorated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cover/ICoverDecorator;

    .line 878
    invoke-interface {v1, p1}, Lcom/amazon/kindle/cover/ICoverDecorator;->draw(Lcom/amazon/kindle/cover/ICoverBuilder;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureRequiredFields()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverProviderManager:Lcom/amazon/kindle/cover/CoverProviderManager;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->decorators:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "decorators is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "coverProviderManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "libraryService is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "coverDBHelper is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fetchCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;)Ljava/lang/String;
    .locals 9

    .line 729
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getMaximumAllowedSizeToFetch()Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p2

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 734
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v7

    .line 742
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverProviderManager:Lcom/amazon/kindle/cover/CoverProviderManager;

    .line 743
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p4, v1}, Lcom/amazon/kindle/cover/CoverProviderManager;->getCoverFromProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 750
    invoke-direct {p0, v8}, Lcom/amazon/kindle/cover/CoverImageService;->decorateCover(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    .line 752
    invoke-interface {v8, p3}, Lcom/amazon/kindle/cover/ICoverBuilder;->persistToDisk(Lcom/amazon/kindle/cover/dao/CoverDAO;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    if-ne p4, v0, :cond_0

    .line 753
    iget-object p4, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p4, v7, v6, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 756
    :cond_0
    invoke-interface {v8}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object p4

    .line 763
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne p2, v0, :cond_2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, v8

    move-object v4, p3

    move-object v5, p2

    .line 765
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->scaleCovers(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    .line 768
    :cond_2
    invoke-interface {p4}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 771
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne p2, v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 772
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    .line 773
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v7, v1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 776
    sget-object v1, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    invoke-direct {p0, v7, p2}, Lcom/amazon/kindle/cover/CoverImageService;->createKey(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 777
    invoke-direct {p0, p3, v6, p1, v1}, Lcom/amazon/kindle/cover/CoverImageService;->scaleToExploreCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    .line 784
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 788
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/cover/CoverImageService;->onImagePathUpdated(Lcom/amazon/kindle/cover/ICover;)V

    goto :goto_0

    .line 793
    :cond_4
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/cover/CoverImageService;->onImageUpdated(Lcom/amazon/kindle/cover/ICover;)V

    .line 798
    :goto_0
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    invoke-direct {p0, v7, p2}, Lcom/amazon/kindle/cover/CoverImageService;->createKey(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 799
    invoke-interface {v8}, Lcom/amazon/kindle/cover/ICoverBuilder;->destroy()V

    move-object v6, v0

    goto :goto_1

    .line 802
    :cond_5
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string p2, "book is null, therefore no timing info for searchForImage "

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v6
.end method

.method public static getCoverId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 3

    .line 1013
    instance-of v0, p0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    instance-of v0, p0, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-eqz v0, :cond_1

    .line 1016
    check-cast p0, Lcom/amazon/kindle/model/content/SideloadBookID;

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->getLastModifiedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1019
    :cond_1
    instance-of p0, p0, Lcom/amazon/kindle/model/content/UpsellBookID;

    if-eqz p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 1014
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCoverId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1001
    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-static {v0}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid book Id: this should not happen! bookId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getImage(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImageMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImageMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverMetadataProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverMetadataProviders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cover/ICoverMetadataProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cover/ICoverMetadataProvider;->getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initialize()V
    .locals 1

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverMetadataProviders:Ljava/util/List;

    .line 170
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/CoverImageService;->registerCoverMetadataProvider(Lcom/amazon/kindle/cover/ICoverMetadataProvider;)V

    .line 172
    new-instance v0, Lcom/amazon/kindle/cover/CoverImageService$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cover/CoverImageService$1;-><init>(Lcom/amazon/kindle/cover/CoverImageService;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/CoverImageService;->registerCoverMetadataProvider(Lcom/amazon/kindle/cover/ICoverMetadataProvider;)V

    return-void
.end method

.method private isAlreadyFetching(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z
    .locals 1

    .line 884
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->createKey(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    .line 887
    sget-object p2, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    monitor-enter p2

    .line 888
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->coversInFlight:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 890
    monitor-exit p2

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 892
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    .line 894
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isCoverUpgradable(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 384
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_1

    .line 385
    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 392
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_2

    return v0

    .line 397
    :cond_2
    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 398
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 399
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v3, :cond_5

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 404
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getLastRetryDate()J

    move-result-wide p1

    sub-long/2addr v3, p1

    const-wide/32 p1, 0xea60

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method private scaleCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;ZLcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 517
    invoke-direct {p0, p3, p5}, Lcom/amazon/kindle/cover/CoverImageService;->isAlreadyFetching(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 523
    :cond_0
    new-instance v0, Lcom/amazon/kindle/cover/CoverImageService$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/cover/CoverImageService$4;-><init>(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/cover/ICover;Z)V

    if-eqz p4, :cond_1

    .line 593
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    const-wide/16 p2, 0x2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 595
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private scaleCovers(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 2

    .line 817
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    sget-object p5, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 818
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/kindle/cover/CoverImageService;->shouldScaleCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 822
    invoke-direct {p0, p2, p3, p1, v1}, Lcom/amazon/kindle/cover/CoverImageService;->scaleToMediumCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    .line 826
    :cond_0
    sget-object p5, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/kindle/cover/CoverImageService;->shouldScaleCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 830
    invoke-direct {p0, p2, p3, p1, v1}, Lcom/amazon/kindle/cover/CoverImageService;->scaleToSmallCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    .line 834
    :cond_1
    sget-object p5, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/kindle/cover/CoverImageService;->shouldScaleCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 838
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object p5

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 839
    invoke-virtual {v0}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-virtual {p4, p5, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p4

    if-nez p4, :cond_2

    const/4 v1, 0x1

    .line 842
    :cond_2
    invoke-direct {p0, p2, p3, p1, v1}, Lcom/amazon/kindle/cover/CoverImageService;->scaleToExploreCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    :cond_3
    return-void
.end method

.method private scaleToExploreCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V
    .locals 6

    .line 497
    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->scaleCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;ZLcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-void
.end method

.method private scaleToMediumCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V
    .locals 6

    .line 475
    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->scaleCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;ZLcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-void
.end method

.method private scaleToSmallCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;Z)V
    .locals 6

    .line 486
    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->scaleCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;ZLcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-void
.end method

.method private shouldScaleCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z
    .locals 4

    .line 847
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 848
    sget-object v1, Lcom/amazon/kindle/cover/CoverImageService$7;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v1, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p4, v2, :cond_5

    const/4 v3, 0x2

    if-eq p4, v3, :cond_4

    const/4 v3, 0x3

    if-eq p4, v3, :cond_1

    const/4 p2, 0x4

    if-eq p4, p2, :cond_0

    return v2

    .line 867
    :cond_0
    sget-object p2, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p2

    .line 869
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->isCoverUpgradable(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;)Z

    move-result p1

    return p1

    .line 858
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p4

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq p4, v3, :cond_2

    .line 859
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p4

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq p4, v3, :cond_2

    .line 860
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p4

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq p4, v3, :cond_2

    .line 861
    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 863
    :goto_0
    sget-object p4, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p4}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 865
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/cover/CoverImageService;->isCoverUpgradable(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 852
    :cond_4
    sget-object p2, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p2

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->isCoverUpgradable(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method private updateCovers()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getUpgradableCovers()Ljava/util/List;

    move-result-object v0

    .line 1080
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/CoverImageService;->removeDuplicateCoversForUpgrade(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1081
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cover/ICover;

    .line 1082
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCover(Lcom/amazon/kindle/cover/ICover;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePDocCovers()V
    .locals 3

    .line 211
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/amazon/kindle/cover/CoverImageService$3;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/cover/CoverImageService$3;-><init>(Lcom/amazon/kindle/cover/CoverImageService;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 239
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V
    .locals 6

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    .line 677
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->isCoverUpgradable(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/cover/CoverImageService;->isAlreadyFetching(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 695
    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    :goto_0
    move-object v3, p2

    if-eqz p4, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 700
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 705
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public buildLocalCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1143
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImageMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    .line 1144
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService;->buildLocalCover(Lcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public buildLocalCover(Lcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .line 1151
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/content/IListableBook;

    :cond_0
    if-eqz p1, :cond_1

    .line 1156
    iget-object p2, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverProviderManager:Lcom/amazon/kindle/cover/CoverProviderManager;

    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {p0}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/amazon/kindle/cover/CoverProviderManager;->getCoverFromLocalProviders(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1158
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cover/CoverImageService;->decorateCover(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    .line 1159
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/amazon/kindle/cover/CoverImageService;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public cancelRequest(Lcom/amazon/kindle/cover/ICover;)V
    .locals 0

    return-void
.end method

.method public deleteAllDiskCachedCovers()V
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteAllCovers()V

    return-void
.end method

.method public deleteBookCovers(Ljava/lang/String;)V
    .locals 7

    .line 1038
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    .line 1039
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1040
    invoke-virtual {v4}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-virtual {v0, p1, v4}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1043
    new-instance v6, Ljava/io/File;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1045
    invoke-virtual {v0, p1, v4}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCover(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteCovers(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, p1, v1, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1056
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/db/Batch;

    .line 1057
    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "KindleContent"

    invoke-interface/range {v2 .. v9}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1058
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1060
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {p1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCovers(Ljava/util/Collection;)V

    return-void
.end method

.method public getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

    if-nez v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

    if-nez v1, :cond_0

    .line 1069
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v1

    .line 1070
    new-instance v2, Lcom/amazon/kcp/cover/CoverFilenamer;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/cover/CoverFilenamer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

    .line 1072
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1074
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverFilenamer:Lcom/amazon/kindle/cover/ICoverFilenamer;

    return-object v0
.end method

.method public getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 912
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_0

    .line 913
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_1

    .line 914
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 915
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 916
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DESC"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v3, "KindleContent"

    .line 914
    invoke-interface/range {v2 .. v9}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 921
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 922
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImageMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    .line 923
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getExploreCoverLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 978
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->isBlocking:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->isBlocking:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 414
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getMaximumAllowedSizeToFetch()Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v2

    .line 420
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    .line 423
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string p3, "Metadata is null in CoverImageService.getImage()"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 427
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v1

    .line 429
    invoke-virtual {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v0}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object p2

    .line 435
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 444
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/cover/CoverImageService;->isAlreadyFetching(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    if-eqz p3, :cond_4

    .line 456
    sget-object p3, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-direct {p0, p1, v2, v1, p3}, Lcom/amazon/kindle/cover/CoverImageService;->fetchCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object p2, p1

    :cond_3
    return-object p2

    .line 462
    :cond_4
    sget-object v3, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V

    return-object p2
.end method

.method public getLargestCoverLocationAboveMinSize(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;
    .locals 8

    .line 936
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 937
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string p2, "Book id is empty, failed to get largest local cover."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    .line 942
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getValuesByPriority()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v2

    .line 944
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 945
    invoke-virtual {v5, p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->isSmaller(Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 946
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is smaller than the min acceptable size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", no available local cover found."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 950
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 952
    invoke-interface {v6}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 953
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 954
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Largest local cover found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    new-instance p1, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;

    invoke-direct {p1, v6, v5}, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 965
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSmallCoverLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 971
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cover/CoverImageService;->deleteCovers(Ljava/util/Collection;)V

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 255
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 256
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 269
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v2, :cond_2

    .line 270
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    .line 273
    :cond_2
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous metadata is not available in the CONTENT_UPDATE event; skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 285
    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v2

    .line 286
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v4}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object v2

    if-nez v2, :cond_4

    .line 289
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string v0, "Trying to refetch PSNL cover on title update, but no cover exists in db"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_4
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    if-ne v2, v3, :cond_6

    .line 295
    :cond_5
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void

    .line 307
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    .line 308
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v2, v3, :cond_7

    .line 309
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_1

    .line 310
    :cond_7
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v2, v3, :cond_8

    .line 312
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_1

    .line 314
    :cond_8
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCoverForAllSizes(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 319
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    .line 320
    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v2, :cond_0

    .line 325
    :cond_a
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public onImagePathUpdated(Lcom/amazon/kindle/cover/ICover;)V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/cover/CoverChangeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/cover/CoverChangeEvent;-><init>(Lcom/amazon/kindle/cover/ICover;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onImageUpdated(Lcom/amazon/kindle/cover/ICover;)V
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/cover/CoverChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/cover/CoverChangeEvent;-><init>(Lcom/amazon/kindle/cover/ICover;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onStartUpCompletedEvent(Lcom/amazon/kindle/krx/foundation/StartupEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/amazon/kindle/cover/CoverImageService$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cover/CoverImageService$2;-><init>(Lcom/amazon/kindle/cover/CoverImageService;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCover(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCover(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCover(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->deleteCover(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    .line 350
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    .line 352
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public registerCoverMetadataProvider(Lcom/amazon/kindle/cover/ICoverMetadataProvider;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverMetadataProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeDuplicateCoversForUpgrade(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1100
    new-instance v2, Lcom/amazon/kindle/cover/CoverImageService$5;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/cover/CoverImageService$5;-><init>(Lcom/amazon/kindle/cover/CoverImageService;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cover/Cover;

    .line 1115
    invoke-virtual {v2}, Lcom/amazon/kindle/cover/Cover;->getCoverSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1117
    invoke-virtual {v2}, Lcom/amazon/kindle/cover/Cover;->getBookid()Ljava/lang/String;

    move-result-object v4

    .line 1118
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1122
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 1123
    invoke-virtual {v3}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1127
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :cond_2
    sget-object v2, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string v3, "Cover image size cannot be null."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public setLoadOrder(Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverLoadingTaskManager:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->setExecutionOrder(Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;)V

    return-void
.end method

.method public submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V
    .locals 7

    .line 1171
    new-instance v6, Lcom/amazon/kindle/cover/CoverImageService$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/CoverImageService$6;-><init>(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V

    if-eqz p4, :cond_0

    .line 1182
    iget-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverLoadingTaskManager:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {p1, v6}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executeWithHighPriority(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverLoadingTaskManager:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {p1, v6}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executeWithLowPriority(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public upgradeCover(Lcom/amazon/kindle/cover/ICover;)V
    .locals 3

    if-nez p1, :cond_0

    .line 641
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to upgrade a null cover!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 645
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->getImageMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    if-nez v0, :cond_1

    .line 647
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata is null in CoverImageService.upgradeCover(), bookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 655
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1

    if-nez v1, :cond_2

    .line 657
    sget-object v0, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover image size is invalid for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 660
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/kindle/cover/CoverImageService;->isBlocking:Z

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    return-void
.end method

.method public upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/CoverImageService;->isBlocking:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    return-void
.end method

.method public upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 614
    sget-object p1, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string p2, "Metadata is null in CoverImageService.upgradeCover()"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 621
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService;->coverDBHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v1

    .line 623
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;

    move-result-object v0

    if-nez v0, :cond_2

    .line 627
    sget-object p3, Lcom/amazon/kindle/cover/CoverImageService;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to upgrade a non existant cover! upgradeCover() should only be called for items we already have covers for."

    invoke-static {p3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 630
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to upgrade without a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cover for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void

    .line 635
    :cond_2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    return-void
.end method

.method public upgradeCoverForAllSizes(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 4

    .line 601
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 602
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/cover/CoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
