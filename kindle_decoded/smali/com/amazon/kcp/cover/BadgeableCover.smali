.class public Lcom/amazon/kcp/cover/BadgeableCover;
.super Landroid/widget/FrameLayout;
.source "BadgeableCover.java"

# interfaces
.implements Lcom/amazon/kcp/cover/badge/IBadgeable;
.implements Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;
.implements Lcom/amazon/kcp/cover/ICoverShowingProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;
    }
.end annotation


# static fields
.field private static final PERF_MARKER_DEBOUNCE_DELAY_MILLIS:J = 0x64L

.field private static final TAG:Ljava/lang/String;

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field protected badgeImageViewMap:Ljava/util/Map;
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

.field protected bindBadgesFinishedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field protected cover:Lcom/amazon/kcp/cover/UpdatableCover;

.field protected coverImageView:Landroid/widget/ImageView;

.field private coverListener:Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;

.field private dateLabelView:Landroid/view/View;

.field private final defaultBackground:Landroid/graphics/drawable/Drawable;

.field protected defaultHeight:I

.field protected defaultWidth:I

.field private dimView:Landroid/view/View;

.field private final downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

.field private downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

.field private downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field protected isConsolidated:Z

.field protected volatile libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

.field protected rebindBadges:Z

.field private richPlaceholderAuthorTextView:Landroid/widget/TextView;

.field private richPlaceholderOverlay:Landroid/view/View;

.field private richPlaceholderTitleTextView:Landroid/widget/TextView;

.field private setContentDescriptionTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field protected skipContentDescriptionTask:Z

.field private titleDetailsSubtitle:Ljava/lang/String;

.field private titleDetailsTitle:Ljava/lang/String;

.field private updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

.field private final useProportionalLayoutForRichPlaceholder:Z

.field private final useRichPlaceholder:Z

.field protected viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const-class v0, Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/BadgeableCover;->TAG:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/cover/BadgeableCover;->TAG:Ljava/lang/String;

    .line 83
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 84
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/BadgeableCover;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadgesFinishedCallbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    .line 97
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->skipContentDescriptionTask:Z

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    .line 114
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 117
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated:Z

    .line 129
    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->UNKNOWN:Lcom/amazon/kcp/cover/badge/BadgeSource;

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 137
    sget v1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridDefaultCover:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 142
    new-instance p1, Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;-><init>(Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    .line 143
    new-instance p1, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    .line 144
    new-instance p1, Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/cover/ProgressManipulator;-><init>(Lcom/amazon/kcp/cover/ICoverShowingProgress;)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$bool;->badgeable_cover_use_rich_placeholder:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->useRichPlaceholder:Z

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$bool;->generated_cover_use_proportional_layout:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->useProportionalLayoutForRichPlaceholder:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->setBottomSectionVisibility()V

    return-void
.end method

.method private ensureRichPlaceholderOverlay()V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 395
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rich_placeholder_overlay_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    .line 396
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rich_placeholder_title:I

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderTitleTextView:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rich_placeholder_author:I

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderAuthorTextView:Landroid/widget/TextView;

    .line 401
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->useProportionalLayoutForRichPlaceholder:Z

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultWidth:I

    iget v2, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultHeight:I

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->calculateLayout(Landroid/content/Context;II)Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 406
    iget v2, v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 407
    iget v2, v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 408
    iget v2, v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->horzMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 409
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 410
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 412
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderTitleTextView:Landroid/widget/TextView;

    iget v2, v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->titleTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderAuthorTextView:Landroid/widget/TextView;

    iget v0, v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->authorTextSize:I

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method private handleBadgeBinding()V
    .locals 4

    .line 699
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

    .line 700
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/amazon/kcp/cover/BadgeableCover$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/cover/BadgeableCover$2;-><init>(Lcom/amazon/kcp/cover/BadgeableCover;)V

    .line 699
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->bindBadges(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method private handleSubscriptionBadgeHeight(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->biggest_subscription_badge_asset_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->biggest_subscription_badge_asset_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    .line 349
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 351
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->badgeable_cover_bottom_section_image_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 354
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->subscription_badges_minimum_acceptable_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_0
    return-void
.end method

.method private hideDownloadBadges()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->reset()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 738
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/cover/BadgeableCover;->setProgressBarVisibility(IZ)V

    return-void
.end method

.method private inflateDownloadProgressIndicator()Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;
    .locals 2

    .line 175
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->download_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->getDownloadProgressLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    return-object v0
.end method

.method private registerCallbacks()V
    .locals 1

    .line 825
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->registerForDownloadEvents()V

    .line 827
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->registerHandler()V

    return-void
.end method

.method private richPlaceholderImage()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 366
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/cover/BadgeableCover;->sizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 368
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDefaultCoverBackgroundProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;->getImageResource(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setBottomSectionVisibility()V
    .locals 2

    .line 726
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover_bottom_section_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 728
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->hasContent(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 729
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setProgressBarVisibility(IZ)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    if-eqz v0, :cond_0

    .line 773
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setVisibility(I)V

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dimView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->setVisibility(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dimView:Landroid/view/View;

    return-void
.end method

.method private setupCoverImageView(II)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/util/LibraryUtils;->setFrameLayoutParams(Landroid/view/View;II)V

    if-lez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object p2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_SECTION_BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->handleSubscriptionBadgeHeight(Landroid/view/View;)V

    return-void
.end method

.method private showIndeterminateDownload()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 763
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setProgressBarVisibility(IZ)V

    .line 764
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setIndeterminate(Z)V

    return-void
.end method

.method private unregisterCallbacks()V
    .locals 1

    .line 831
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->unregisterForDownloadEvents()V

    .line 833
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->unregisterHandler()V

    return-void
.end method

.method private updateDownloadBadges()V
    .locals 5

    .line 642
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated:Z

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    .line 644
    sget-object v1, Lcom/amazon/kcp/cover/BadgeableCover$4;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isBookTransferring(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 677
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->setProgressBarVisibility(IZ)V

    .line 678
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->onDownloadQueued()V

    .line 673
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->showIndeterminateDownload()V

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->onDownloadRequiredComplete()V

    goto :goto_0

    .line 649
    :pswitch_3
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    iget-object v3, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v3

    if-ltz v3, :cond_0

    .line 655
    sget-object v3, Lcom/amazon/kcp/cover/badge/BadgeSource;->HOME:Lcom/amazon/kcp/cover/badge/BadgeSource;

    iget-object v4, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 656
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v4

    xor-int/2addr v2, v4

    .line 657
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v4

    .line 655
    invoke-static {v3, v2, v4}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->shouldDimLibraryCover(ZZLcom/amazon/kcp/application/Marketplace;)Z

    move-result v2

    const/4 v3, 0x0

    .line 658
    invoke-direct {p0, v3, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->setProgressBarVisibility(IZ)V

    .line 659
    iget-object v2, p0, Lcom/amazon/kcp/cover/BadgeableCover;->progressBarManipulator:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/cover/ProgressManipulator;->showDownloadProgress(IZ)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->getProgress()I

    move-result v0

    if-nez v0, :cond_3

    .line 663
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->showIndeterminateDownload()V

    goto :goto_0

    .line 680
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->hideDownloadBadges()V

    goto :goto_0

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->hideDownloadBadges()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRichPlaceholderOverlay(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->ensureRichPlaceholderOverlay()V

    .line 378
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderAuthorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderOverlay:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addPaddingToSeriesBadge(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowSubscriptionBadge(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->badge_padding_small:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 559
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected applyCoverImage(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 297
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    .line 299
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultWidth:I

    if-lez v1, :cond_2

    div-float v2, p1, v0

    .line 301
    iget v3, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultHeight:I

    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    int-to-float v1, v3

    div-float/2addr v1, p1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    div-float/2addr v1, v0

    :goto_0
    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 307
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setupCoverImageView(II)V

    .line 309
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverListener:Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;

    if-eqz p1, :cond_3

    .line 310
    invoke-interface {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;->onUpdateWidth(I)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    .line 316
    invoke-direct {p0, p1, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setupCoverImageView(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected bindBadges()V
    .locals 1

    .line 690
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    .line 691
    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->isBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->handleBadgeBinding()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    :goto_0
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

    .line 874
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

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

    .line 879
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBadgeableSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method public getDisplayItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method

.method public getDownloadAccessibilityHelper()Lcom/amazon/kcp/util/DownloadAccessibilityHelper;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    return-object v0
.end method

.method protected getDownloadProgressLayout()I
    .locals 1

    .line 181
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->two_state_progress_bar:I

    return v0
.end method

.method public getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method

.method public getProgressIndicator()Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    return-object v0
.end method

.method public getSashBadgeType()Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
    .locals 1

    .line 899
    sget-object v0, Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;->NORMAL:Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;

    return-object v0
.end method

.method public getSerializedBookId()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleDetailsSubtitle()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleDetailsTitle()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatableCover()Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    return-object v0
.end method

.method public getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method

.method public isConsolidated()Z
    .locals 1

    .line 894
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated:Z

    return v0
.end method

.method protected notifyDoneUpdate()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverListener:Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;->onUpdate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 809
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 810
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->registerCallbacks()V

    .line 811
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateBadges()V

    return-void
.end method

.method public onBookTransferFinishEvent(Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 852
    invoke-virtual {p1}, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 853
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/cover/BadgeableCover$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/cover/BadgeableCover$3;-><init>(Lcom/amazon/kcp/cover/BadgeableCover;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 816
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 817
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->unregisterCallbacks()V

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    .line 821
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->cancelBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_ITEM_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 191
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->getSignInLocation()Lcom/amazon/kindle/trial/SignInLocation;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/trial/SignInLocation;->LIBRARY:Lcom/amazon/kindle/trial/SignInLocation;

    if-ne p1, v0, :cond_0

    .line 192
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_FIRST_BOOK_DRAWN:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 154
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    .line 156
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->bottom_section_center_badge:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 158
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->top_right_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_CORNER:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->top_right_corner_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->top_right_sash_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->bottom_right_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->bottom_left_badge:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_SECTION_BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->bottom_right_label:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->bottom_left_label:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->inflateDownloadProgressIndicator()Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    const/16 v2, 0x8

    .line 167
    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setVisibility(I)V

    .line 168
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->bottom_section_center_label:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    .line 169
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->dim_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dimView:Landroid/view/View;

    .line 171
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->badgeable_cover_bottom_section_simple_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    return-void
.end method

.method public onUpdateCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 845
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 846
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateBadges()V

    .line 847
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadAccessibilityHelper:Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->handleUpdate(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public registerBindBadgesFinishedCallback(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadgesFinishedCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(Z)V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->hideDownloadBadges()V

    const/4 v0, 0x0

    .line 786
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->rebindBadges:Z

    .line 788
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;->getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/badge/service/IBadgeService;->cancelBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)V

    .line 789
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadgesFinishedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->setContentDescriptionTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 792
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 793
    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->setContentDescriptionTask:Landroid/os/AsyncTask;

    :cond_1
    if-nez p1, :cond_3

    .line 799
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

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

    .line 800
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 801
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setBadgeSource(Lcom/amazon/kcp/cover/badge/BadgeSource;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-void
.end method

.method protected setCoverDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 249
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    sget-object p1, Lcom/amazon/kcp/cover/BadgeableCover;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "trying to set the same cover image on the same drawable, skipping"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->applyCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 256
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 257
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 259
    :cond_1
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COVER_IMAGE_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 263
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->useRichPlaceholder:Z

    if-eqz p1, :cond_5

    .line 264
    invoke-direct {p0, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->updateRichPlaceholderOverlay(Z)V

    goto :goto_1

    .line 268
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->useRichPlaceholder:Z

    if-eqz p1, :cond_4

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->richPlaceholderImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->applyCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateRichPlaceholderOverlay(Z)V

    goto :goto_1

    .line 272
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultWidth:I

    iget v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultHeight:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setupCoverImageView(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setDefaultSize(II)V
    .locals 0

    .line 868
    iput p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultWidth:I

    .line 869
    iput p2, p0, Lcom/amazon/kcp/cover/BadgeableCover;->defaultHeight:I

    return-void
.end method

.method public setDownloadProgressHeight(I)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setHeight(I)V

    return-void
.end method

.method public setIsConsolidated(Z)V
    .locals 0

    .line 864
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated:Z

    return-void
.end method

.method public setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 3

    .line 442
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverHandler:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 444
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateDateLabel()V

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateTitleDetails(Landroid/content/res/Resources;)V

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 450
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->bottom_left_content:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverForCollectionType(Landroid/view/View;Landroid/view/View;Landroid/content/res/Resources;)V

    .line 452
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->skipContentDescriptionTask:Z

    if-nez v0, :cond_1

    .line 453
    new-instance v0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;

    iget-boolean v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->isConsolidated:Z

    iget-object v2, p0, Lcom/amazon/kcp/cover/BadgeableCover;->downloadProgressBar:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;-><init>(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;)V

    sget-object p1, Lcom/amazon/kcp/cover/BadgeableCover;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 454
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->setContentDescriptionTask:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public setListener(Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->coverListener:Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;

    return-void
.end method

.method public setOverflowMenuIcon(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 426
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->overflow_menu_button_stub:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 574
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 575
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 576
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 579
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 580
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 581
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 584
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 585
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeTextViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 589
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 590
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 591
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeImageViewMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_SECTION_BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 594
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLinearLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 595
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 596
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 597
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->badgeable_cover_bottom_section_badge_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 598
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->badgeable_cover_bottom_section_badge_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 599
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLinearLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->badgeable_cover_bottom_section_badge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 603
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 604
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->badgeable_cover_bottom_section_badge_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 605
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSizeType(Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->sizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-void
.end method

.method public setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->cover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 221
    new-instance v0, Lcom/amazon/kcp/cover/BadgeableCover$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/cover/BadgeableCover$1;-><init>(Lcom/amazon/kcp/cover/BadgeableCover;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    return-void
.end method

.method public setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-void
.end method

.method setVisibility(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_1

    .line 750
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 752
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 755
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method protected updateBadges()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->bindBadges()V

    .line 635
    invoke-direct {p0}, Lcom/amazon/kcp/cover/BadgeableCover;->updateDownloadBadges()V

    return-void
.end method

.method public updateCoverForCollectionType(Landroid/view/View;Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3

    .line 522
    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 523
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->badge_padding_small:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 524
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getItemID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getItemID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 525
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverForNarrative(Landroid/view/View;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {v1}, Lcom/amazon/kindle/utils/SeriesBindingHelper;->shouldShowSeriesBinding(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverForSeries(Landroid/view/View;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->updateCoverForNonSeries(Landroid/view/View;)V

    .line 532
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method updateCoverForNarrative(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    const/16 v0, 0x8

    .line 537
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->addPaddingToSeriesBadge(Landroid/content/res/Resources;Landroid/view/View;)V

    return-void
.end method

.method updateCoverForNonSeries(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 548
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateCoverForSeries(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 544
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->addPaddingToSeriesBadge(Landroid/content/res/Resources;Landroid/view/View;)V

    return-void
.end method

.method public updateDateLabel()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->formatShortPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->setVisibility(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 475
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/cover/BadgeableCover;->setVisibility(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->dateLabelView:Landroid/view/View;

    .line 482
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 483
    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateTitleDetails(Landroid/content/res/Resources;)V
    .locals 6

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsSubtitle:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitleDetailsJson()Ljava/lang/String;

    move-result-object v0

    .line 493
    new-instance v1, Lcom/amazon/kcp/library/TitleDetails;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/library/TitleDetails;-><init>(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    sget-object v2, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v2, :cond_1

    .line 497
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPartNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->details_view_series_detail_title:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPartNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPartNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPublicationRun()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 506
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->details_view_ungrouped_series_title:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPublicationRun()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsTitle:Ljava/lang/String;

    .line 513
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPartNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    if-eq p1, v0, :cond_4

    .line 514
    invoke-virtual {v1}, Lcom/amazon/kcp/library/TitleDetails;->getPartNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->titleDetailsSubtitle:Ljava/lang/String;

    :cond_4
    return-void
.end method
