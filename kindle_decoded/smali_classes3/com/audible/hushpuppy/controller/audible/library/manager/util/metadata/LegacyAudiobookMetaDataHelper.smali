.class public final Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;
.super Ljava/lang/Object;
.source "LegacyAudiobookMetaDataHelper.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field

.field private hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Landroid/content/Context;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 66
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method

.method private getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    .line 385
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 388
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCacheKey(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/lang/String;
    .locals 1

    .line 402
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCarouselBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 184
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_read_progress_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 186
    :cond_1
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 190
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_read_progress_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 192
    :cond_3
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getGridViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 152
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_read_progress_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 158
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_read_progress_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 160
    :cond_3
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getListViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 128
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_list_badge_audiobook_downloaded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_list_badge_audiobook_not_downloaded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private isEBookOwned(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 452
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Cache key is null, returning false for book owned"

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 453
    monitor-exit v1

    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 456
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return v0
.end method

.method private putCacheKey(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAudioBookFileSize(Lcom/amazon/kindle/krx/content/IBook;)J
    .locals 3

    .line 230
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 234
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Cache key is null, Returning file size 0"

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-wide v0

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    if-eqz p1, :cond_2

    .line 239
    sget-object v2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J

    move-result-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 85
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Cache key is null, So NO badge Icons"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_6

    .line 94
    sget-object v2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 99
    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 101
    :goto_0
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v3, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    return-object v1

    .line 107
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getListViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 105
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getGridViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 103
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCarouselBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public getCompanionAudioBookAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->isEBookOwned(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 4

    .line 254
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cache key is null, No content desc text"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_5

    .line 263
    sget-object v2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq v0, v2, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 265
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_added:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 271
    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_downloaded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_4
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_not_downloaded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->isEBookOwned(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public isAudioBookNew(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 208
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 212
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Cache key is null, So returning false for Book being new"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    if-eqz p1, :cond_1

    .line 217
    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioBookNew(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public loadCache()V
    .locals 4

    .line 287
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Hushpuppy loading companion mapping cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getAllRelationships()Ljava/util/List;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->resetCache()V

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 292
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->putCacheKey(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 297
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCache()V
    .locals 2

    .line 336
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Hushpuppy reset companion mapping cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCache(Lcom/audible/relationship/domain/RelationshipMappingModification;)V
    .locals 1

    .line 328
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Not implemented! This is not supposed to be called here. Please check dagger configuration."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method public updateCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Hushpuppy update companion mapping cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->hushpuppyEnabledEBooksCacheLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 314
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCacheKey(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->putCacheKey(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 319
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
