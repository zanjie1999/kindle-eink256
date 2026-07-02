.class public Lcom/amazon/kcp/library/ui/LibraryBookRow;
.super Lcom/amazon/kcp/cover/CheckableRelativeLayout;
.source "LibraryBookRow.java"

# interfaces
.implements Lcom/amazon/kcp/cover/badge/IBadgeable;
.implements Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;
.implements Lcom/amazon/kcp/cover/ICoverShowingProgress;


# static fields
.field private static final PERF_MARKER_DEBOUNCE_DELAY_MILLIS:J = 0x64L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioBookMetaDataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

.field private audioBookSize:J

.field private badgeImageViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field protected badgeTextViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private bindBadgesAsyncTask:Landroid/os/AsyncTask;

.field private bookSize:Landroid/view/View;

.field private cover:Lcom/amazon/kcp/cover/UpdatableCover;

.field protected coverImageView:Landroid/widget/ImageView;

.field private coverViewRect:Landroid/graphics/RectF;

.field private final defaultCover:Landroid/graphics/drawable/Drawable;

.field private final downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

.field private downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

.field private downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field protected downloadingText:Landroid/view/View;

.field private isConsolidated:Z

.field private libraryBookRows:Landroid/view/View;

.field protected libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private final progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

.field protected readingProgress:Landroid/view/View;

.field private rebindBadges:Z

.field private rightEdgeParent:Landroid/view/View;

.field protected subtitleView:Landroid/widget/TextView;

.field protected titleView:Landroid/widget/TextView;

.field private updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    .line 98
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->UNKNOWN:Lcom/amazon/kcp/cover/badge/BadgeSource;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 112
    sget v0, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listDefaultCover:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->defaultCover:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->getCoverViewRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->coverViewRect:Landroid/graphics/RectF;

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 117
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 118
    new-instance p1, Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;-><init>(Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    .line 119
    new-instance p1, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    .line 120
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookMetaDataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    .line 121
    sget p1, Lcom/amazon/kindle/librarymodule/R$drawable;->select_overlay_selector_no_check:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 122
    new-instance p1, Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/cover/ProgressManipulator;-><init>(Lcom/amazon/kcp/cover/ICoverShowingProgress;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/ui/LibraryBookRow;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->defaultCover:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/ui/LibraryBookRow;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindBadgesAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/ui/LibraryBookRow;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/library/ui/LibraryBookRow;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setLibraryBookRow1Visibility()V

    return-void
.end method

.method private getFalkorEpisodeTitle()Ljava/lang/String;
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 410
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 412
    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 416
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private hideDownloadBadges()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->reset()V

    const/16 v0, 0x8

    .line 462
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setProgressBarVisibility(I)V

    const/4 v1, 0x0

    .line 463
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setBadgesVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    return-void
.end method

.method private registerCallbacks()V
    .locals 1

    .line 321
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->registerForDownloadEvents()V

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->registerHandler()V

    return-void
.end method

.method private setBadgesVisibility(I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryBookRows:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setLibraryBookRow1Visibility()V
    .locals 2

    .line 450
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 452
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->hasContent(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 453
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 455
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterCallbacks()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->unregisterForDownloadEvents()V

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->unregisterHandler()V

    return-void
.end method


# virtual methods
.method protected bindCoverImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 297
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method public getBadgeImageViewMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBadgeTextViewMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBadgeableSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method protected getCoverViewRect()Landroid/graphics/RectF;
    .locals 4

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    .line 127
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->library_book_row_cover_container_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 128
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->library_book_row_cover_container_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getDisplayItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method

.method public getDownloadAccessibilityHelper()Lcom/amazon/kcp/util/DownloadAccessibilityHelper;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    return-object v0
.end method

.method public getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method

.method public getProgressIndicator()Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    return-object v0
.end method

.method public getSashBadgeType()Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
    .locals 1

    .line 638
    sget-object v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->NORMAL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    return-object v0
.end method

.method public getSerializedBookId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 628
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method

.method public isConsolidated()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 303
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 304
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->registerCallbacks()V

    return-void
.end method

.method public onBookTransferFinishEvent(Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 596
    invoke-virtual {p1}, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 597
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookRow$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow$3;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 309
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 310
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->unregisterCallbacks()V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindBadgesAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 315
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindBadgesAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_ITEM_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 133
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 135
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->coverImageView:Landroid/widget/ImageView;

    .line 137
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_subscription:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 139
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_title:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->titleView:Landroid/widget/TextView;

    .line 140
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_author:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    .line 141
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_downloading_text:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    .line 142
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_download_progress:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    .line 143
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_reading_progress:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    .line 144
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_file_size:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bookSize:Landroid/view/View;

    .line 145
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->right_edge_parent:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rightEdgeParent:Landroid/view/View;

    .line 146
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_rows:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryBookRows:Landroid/view/View;

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->middle_right_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->STAMP:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_stamp:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BADGE_ROW_2_COL_1:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_ribbon:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_group:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->middle_right_label:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_book_row_simple_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    return-void
.end method

.method public onUpdateCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 589
    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 590
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateAll()V

    .line 591
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->handleUpdate(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindBadgesAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 193
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 194
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindBadgesAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    if-nez p1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeImageViewMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 201
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 202
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeTextViewMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 207
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->titleView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    .line 216
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setProgressBarVisibility(I)V

    return-void
.end method

.method protected setAudioBookSize()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookMetaDataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookMetaDataProvider:Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getAudioBookFileSize(Lcom/amazon/kindle/krx/content/IBook;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookSize:J

    :cond_0
    return-void
.end method

.method public setBadgeSource(Lcom/amazon/kcp/cover/badge/BadgeSource;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-void
.end method

.method public setDisplayData(Lcom/amazon/kcp/library/ILibraryDisplayItem;Z)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 225
    iput-boolean p2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated:Z

    .line 227
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setAudioBookSize()V

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateAll()V

    return-void
.end method

.method protected setDownloadProgressText(I)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->DOWNLOAD_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    .line 543
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 544
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setIsConsolidated(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated:Z

    return-void
.end method

.method protected setProgressBarVisibility(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setTitleAndSubtitle()V
    .locals 8

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFalkor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->getFalkorEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->no_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 376
    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 375
    invoke-static {v0, v1, v2, v4, v3}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowBookCountWithPrefix(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->kre_library_series_book_number_prefix:I

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v7}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v5, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-static {v2, v5}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowBookCountWithPrefixForSearch(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->kre_library_series_book_number_prefix:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v6}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, " | "

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 389
    :cond_4
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 394
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->subtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 1

    .line 267
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 268
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 269
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    return-void
.end method

.method protected setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 340
    instance-of p3, p1, Landroid/view/ViewStub;

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 342
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method protected showIndeterminateDownload()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 354
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setIndeterminate(Z)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateAll()V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateReadingProgressText()V

    .line 237
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateDownloadProgressBar()V

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateDownloadProgressText()V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateBookSize()V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setTitleAndSubtitle()V

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateBadges()V

    .line 245
    new-instance v0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->isConsolidated:Z

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;-><init>(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method updateBadges()V
    .locals 4

    .line 431
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->isBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->bindBadges(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->rebindBadges:Z

    :goto_0
    return-void
.end method

.method protected updateBookSize()V
    .locals 8

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getSize()J

    move-result-wide v0

    .line 569
    iget-wide v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookSize:J

    add-long/2addr v2, v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    .line 571
    iget-object v5, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bookSize:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bookSize:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 573
    invoke-static {v2, v3}, Lcom/amazon/kcp/util/LibraryUtils;->getReadableFileSize(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 574
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 575
    sget-object v5, Lcom/amazon/kcp/library/ui/LibraryBookRow;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v7}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has invalid total file size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with book size : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " and audioBook size : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->audioBookSize:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bookSize:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bookSize:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, v4}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method updateDownloadProgressBar()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    .line 469
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookRow$4;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_0

    .line 496
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->hideDownloadBadges()V

    goto :goto_0

    .line 492
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setBadgesVisibility(I)V

    .line 493
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->showIndeterminateDownload()V

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-interface {v3, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    .line 478
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    .line 479
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setProgressBarVisibility(I)V

    .line 480
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setBadgesVisibility(I)V

    if-eqz v1, :cond_0

    .line 481
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v2

    if-ltz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->showDownloadProgress(IZ)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->showIndeterminateDownload()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateDownloadProgressText()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookRow$4;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isBookTransferring(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->transfer_library_list_view_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDownloadProgressText(I)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->downloadingText:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    goto :goto_0

    .line 528
    :cond_2
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download_complete:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDownloadProgressText(I)V

    goto :goto_0

    .line 519
    :cond_3
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download_queued:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDownloadProgressText(I)V

    goto :goto_0

    .line 515
    :cond_4
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download_paused:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDownloadProgressText(I)V

    goto :goto_0

    .line 524
    :cond_5
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->downloading_notitle:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDownloadProgressText(I)V

    :goto_0
    return-void
.end method

.method protected updateReadingProgressText()V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 554
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq v0, v2, :cond_2

    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result v0

    if-lez v0, :cond_2

    .line 557
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 559
    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->readingProgress:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setVisibility(Landroid/view/View;ILcom/amazon/kcp/cover/badge/CoverBadge;)Landroid/view/View;

    return-void
.end method
