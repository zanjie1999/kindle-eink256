.class public final Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;
.super Ljava/lang/Object;
.source "AudiobookMetadataProvider.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private context:Landroid/content/Context;

.field private final dbScalingHushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 83
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    const-string v0, "audibleService can\'t be null"

    .line 84
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const-string v0, "legacy storage can\'t be null"

    .line 85
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-direct {v0, p3, p1, p2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;-><init>(Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Landroid/content/Context;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    const-string p1, "dbScalingHushpuppyStorage can\'t be null."

    .line 87
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->dbScalingHushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 88
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 90
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method private getCarouselBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 286
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting carousel badge icon for ebook [%s:%s]"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
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

    .line 294
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_read_progress_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 296
    :cond_1
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 300
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_read_progress_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 302
    :cond_3
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_carousel_badge_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getGridViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 314
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting grid view badge icon for ebook [%s:%s]"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
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

    .line 322
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_read_progress_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 324
    :cond_1
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_audiobook_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 328
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_read_progress_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 330
    :cond_3
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_grid_badge_audiobook_not_downloaded:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getListViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 342
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Getting list view badge icon for ebook [%s:%s]"

    invoke-interface {v0, v2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 346
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_list_badge_audiobook_downloaded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 348
    :cond_0
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_list_badge_audiobook_not_downloaded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;
    .locals 1

    if-eqz p1, :cond_1

    .line 264
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isDBScalingEnabled()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    return v0
.end method

.method private validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getAudioBookFileSize(Lcom/amazon/kindle/krx/content/IBook;)J
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J

    move-result-wide v0

    return-wide v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getAudioBookFileSize(Lcom/amazon/kindle/krx/content/IBook;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 99
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No companion audiobook for eBook [%s:%s]"

    invoke-interface {p2, v1, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 105
    :goto_0
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v3, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    return-object v2

    .line 111
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getListViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 109
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getGridViewBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 107
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getCarouselBadge(Lcom/amazon/kindle/krx/content/IBook;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getCompanionAudioBookAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getCompanionAudioBookAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_added:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 159
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_downloaded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_audio_not_downloaded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getContentDescription(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    return p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public isAudioBookNew(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->getOwnedCompanionAudiobook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->validCompanionAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioBookNew(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->isAudioBookNew(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public loadCache()V
    .locals 6

    .line 196
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Loading relationship mapping cache."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->resetCache()V

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->dbScalingHushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getAllRelationships()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 204
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    const-string v5, "Loading owned title [eBook:aBook] = [%s:%s] to cache"

    .line 205
    invoke-interface {v2, v5, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->loadCache()V

    :cond_2
    return-void
.end method

.method public resetCache()V
    .locals 2

    .line 251
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing relationship mapping cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->resetCache()V

    :goto_0
    return-void
.end method

.method public updateCache(Lcom/audible/relationship/domain/RelationshipMappingModification;)V
    .locals 6

    .line 229
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "modification can\'t be null"

    .line 230
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getAddRelationship()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/relationship/domain/Relationship;

    .line 233
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    const-string v5, "Adding owned title [eBook:aBook] = [%s:%s] to cache"

    invoke-interface {v2, v5, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getDeleteRelationship()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/domain/Relationship;

    .line 241
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->ownedCompanionAudiobookCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->updateCache(Lcom/audible/relationship/domain/RelationshipMappingModification;)V

    :cond_3
    return-void
.end method

.method public updateCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Not implemented! This is not supposed to be called here. Please check dagger configuration."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/AudiobookMetadataProvider;->legacyAudiobookMetaDataHelper:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/LegacyAudiobookMetaDataHelper;->updateCache(Ljava/util/List;)V

    :goto_0
    return-void
.end method
