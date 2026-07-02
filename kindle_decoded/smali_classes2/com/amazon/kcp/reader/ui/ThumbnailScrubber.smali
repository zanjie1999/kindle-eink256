.class public Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
.super Landroid/widget/HorizontalScrollView;
.source "ThumbnailScrubber.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/amazon/kcp/reader/ui/AbstractImageCache$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$AccessibilitySilentTextView;,
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;,
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;,
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
    }
.end annotation


# static fields
.field private static final MOP_METRICS_TAG:Ljava/lang/String; = "MOPMetrics"

.field private static final SMOOTH_SCROLL_DELAY:J = 0xfaL

.field private static final THUMBNAIL_BACKGROUND_COLOR:I = -0x1

.field private static final THUMBNAIL_PAGE_LABEL_COLOR:I = -0x1

.field private static final UNICODE_DOWN_POINTING_TRIANGLE:Ljava/lang/String; = "\u25bc"


# instance fields
.field private final DefaultThumbnailCount:I

.field private final MarginBetweenThumbnails:I

.field private final NO_PAGE_NUMBER_ARGUMENT:I

.field private final ScrubberBottomMargin:I

.field private final ScrubberTopMargin:I

.field private final ThumbnailBorder:I

.field private final allImageViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;",
            ">;"
        }
    .end annotation
.end field

.field private allThumbnails:Landroid/widget/LinearLayout;

.field private bookmarkTree:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentPageIndex:I

.field private currentScrubberPageNumber:I

.field private currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

.field private customActionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

.field private fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

.field private headPadding:Landroid/widget/LinearLayout;

.field private imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

.field private volatile isReleased:Z

.field private kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

.field private kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private lastSelectedPageViewId:I

.field private layoutParent:Landroid/widget/LinearLayout;

.field private marginParams:Landroid/widget/LinearLayout$LayoutParams;

.field private pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private final pageNumHorizPad:I

.field private final pageNumVertPad:I

.field private pageToViewIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pagesInBook:I

.field private positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

.field private postNavigationRunnable:Ljava/lang/Runnable;

.field private suppressPageNumberUpdateOnScrollChange:Z

.field private tailPadding:Landroid/widget/LinearLayout;

.field private final thumbnailBitmapHeight:I

.field private final thumbnailBitmapWidth:I

.field private thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

.field private thumbnailCount:I

.field private thumbnailDisplayHeight:I

.field private thumbnailDisplayWidth:I

.field private thumbnailImageParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private viewIdToPageArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_margin_between_thumbnails:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->MarginBetweenThumbnails:I

    .line 111
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_thumbnail_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ThumbnailBorder:I

    const/16 v0, 0xd

    .line 112
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->DefaultThumbnailCount:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ScrubberTopMargin:I

    .line 114
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ScrubberBottomMargin:I

    const/4 v1, -0x1

    .line 133
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->lastSelectedPageViewId:I

    .line 134
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    const/4 v2, 0x0

    .line 135
    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentScrubberPageNumber:I

    .line 141
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->NO_PAGE_NUMBER_ARGUMENT:I

    .line 149
    new-instance v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    invoke-direct {v1, v2, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;-><init>(II)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->postNavigationRunnable:Ljava/lang/Runnable;

    .line 152
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isReleased:Z

    .line 157
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->suppressPageNumberUpdateOnScrollChange:Z

    .line 159
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->bookmarkTree:Ljava/util/TreeSet;

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allImageViews:Ljava/util/Set;

    .line 165
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 167
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    .line 170
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    .line 171
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    .line 172
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    .line 174
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_display_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    .line 181
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_display_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    .line 182
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_bitmap_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapWidth:I

    .line 183
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_bitmap_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapHeight:I

    .line 184
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_pagenum_vert_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageNumVertPad:I

    .line 185
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_pagenum_horiz_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageNumHorizPad:I

    .line 188
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->marginParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    iget p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->MarginBetweenThumbnails:I

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ScrubberTopMargin:I

    div-int/lit8 p2, p2, 0x2

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ScrubberBottomMargin:I

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 196
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getThumbnailImageCache()Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    .line 197
    new-instance p1, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    .line 198
    new-instance p1, Lcom/amazon/kindle/seekbar/LinearMapper;

    invoke-direct {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Landroid/view/View;)I
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageIndexForThumbnailView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;IZZ)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->selectPage(IZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->refreshThumbnails()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->resetFocusability(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Lcom/amazon/android/docviewer/KindleDocViewer;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->navigateToPageIndex(Lcom/amazon/android/docviewer/KindleDocViewer;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isMop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateScrollState(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->suppressPageNumberUpdateOnScrollChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->stopScrolling()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kindle/seekbar/LinearMapper;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutScrubber()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;IZ)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->centerSpecifiedPageIndex(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateCustomChrome()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isReleased:Z

    return p0
.end method

.method private centerSpecifiedPageIndex(IZ)V
    .locals 2

    .line 696
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v0

    mul-int p1, p1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 698
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateScrubberPageNumber(I)V

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->suppressPageNumberUpdateOnScrollChange:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 701
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 704
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutScrubber()V

    :goto_0
    return-void
.end method

.method private cycleThumbnails()V
    .locals 8

    .line 959
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getCenterPageIndex(I)I

    move-result v0

    .line 960
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailRange(I)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    move-result-object v1

    .line 962
    iget v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    iget v3, v3, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    if-eq v2, v3, :cond_4

    .line 964
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getHeadPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 965
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getTailPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 967
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 968
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 969
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 970
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 972
    iget v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    .line 975
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    iget v3, v3, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    if-le v2, v3, :cond_1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 978
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    add-int v6, v3, v5

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    if-ge v6, v7, :cond_3

    sub-int v6, v2, v3

    if-gt v6, v5, :cond_0

    add-int/2addr v5, v3

    .line 981
    invoke-direct {p0, v4, v5}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->scrollToNextImage(II)V

    goto :goto_1

    :cond_0
    sub-int v3, v2, v5

    add-int/lit8 v3, v3, -0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-lt v3, v2, :cond_3

    sub-int v4, v3, v2

    .line 994
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 995
    invoke-direct {p0, v5, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->scrollToNextImage(II)V

    goto :goto_3

    :cond_2
    add-int v3, v2, v5

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1003
    :cond_3
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    .line 1005
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendCenterSortedPendingRequests(I)V

    return-void
.end method

.method private getCenterPageIndex(I)I
    .locals 1

    .line 901
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method

.method private getCurrentPageIndex()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    .line 1048
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageIndex(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getHeadPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I
    .locals 1

    .line 913
    iget p1, p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method

.method private getPageCount(Lcom/amazon/android/docviewer/KindleDoc;)I
    .locals 0

    .line 1030
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalPages()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getPageIndex(I)I
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_2

    .line 1035
    instance-of v1, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1038
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1036
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    return p1
.end method

.method private getPageIndexForThumbnailView(Landroid/view/View;)I
    .locals 1

    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ltz p1, :cond_0

    .line 947
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    if-ge p1, v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getPositionForShortPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSingleThumbnailWidth()I
    .locals 2

    .line 889
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->MarginBetweenThumbnails:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ThumbnailBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getTailPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I
    .locals 1

    .line 923
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    add-int/lit8 v0, v0, -0x1

    iget p1, p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->end:I

    sub-int/2addr v0, p1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method private getThumbnailRange(I)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;
    .locals 3

    .line 936
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 937
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 938
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 939
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    sub-int p1, v1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 942
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;-><init>(II)V

    return-object v0
.end method

.method private isMop()Z
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutScrubber()V
    .locals 5

    .line 1184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 1187
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    .line 1188
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    .line 1189
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1190
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private loadInitialThumbnails()V
    .locals 10

    .line 248
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailRange(I)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 249
    :goto_0
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    if-ge v1, v2, :cond_2

    .line 251
    new-instance v2, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Landroid/content/Context;)V

    .line 252
    new-instance v3, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$AccessibilitySilentTextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$AccessibilitySilentTextView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v4, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;-><init>(Landroid/content/Context;)V

    .line 255
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allImageViews:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 257
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 258
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    const/4 v5, -0x1

    .line 259
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 260
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v6, 0x1

    .line 261
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 262
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 264
    sget v7, Lcom/amazon/kindle/krl/R$drawable;->thumbnail_item_background:I

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 267
    new-instance v7, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$1;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$1;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    new-instance v7, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$2;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$2;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xe

    .line 288
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageNumHorizPad:I

    iget v8, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageNumVertPad:I

    invoke-virtual {v3, v5, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 292
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 293
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 294
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentThumbnailRange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    iget v5, v5, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    add-int/2addr v5, v1

    .line 296
    invoke-direct {p0, v5}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_1
    invoke-virtual {p0, v3, v5}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateThumbnailLabel(Landroid/widget/TextView;I)V

    .line 307
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->marginParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->ThumbnailBorder:I

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 313
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    aput v5, v3, v4

    .line 318
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->observeView(ILcom/amazon/kcp/reader/ui/AbstractImageCache$Observer;)V

    .line 319
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    if-ne v5, v3, :cond_1

    .line 321
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->showSelectBox(Landroid/widget/RelativeLayout;)V

    .line 323
    :cond_1
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    .line 325
    new-instance v3, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;

    invoke-direct {v3, p0, v2, v5}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;II)V

    .line 333
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->runWhenReady(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendCenterSortedPendingRequests(I)V

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->alignScrubberToCurrentReadingPage()V

    return-void
.end method

.method private navigateToPageIndex(Lcom/amazon/android/docviewer/KindleDocViewer;I)V
    .locals 1

    .line 1021
    instance-of v0, p1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1023
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToLocation(I)V

    goto :goto_0

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v0, :cond_1

    .line 1025
    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshBookmarks()V
    .locals 3

    .line 1312
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 1316
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->bookmarkTree:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 1319
    invoke-interface {v0, v2, v2, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v0

    .line 1320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1321
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->bookmarkTree:Ljava/util/TreeSet;

    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updatePageLabelViews()V

    return-void
.end method

.method private refreshThumbnails()V
    .locals 3

    const/4 v0, 0x0

    .line 1168
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1170
    instance-of v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;

    if-eqz v2, :cond_0

    .line 1171
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1172
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    aget v2, v2, v1

    .line 1173
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->sendThumbnailUpdateRequest(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendCenterSortedPendingRequests(I)V

    return-void
.end method

.method private resetFocusability(Z)V
    .locals 9

    .line 1288
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v0

    .line 1289
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    .line 1291
    :goto_0
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1292
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1293
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1296
    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    .line 1298
    :cond_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1301
    :goto_1
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    aget v7, v7, v8

    if-ne v1, v7, :cond_2

    move-object v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 1307
    invoke-virtual {v4, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_4
    return-void
.end method

.method private scrollToNextImage(II)V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 469
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 470
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    aput p2, v1, v2

    .line 471
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 473
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 474
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    .line 476
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    if-ne p2, v2, :cond_0

    .line 477
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->showSelectBox(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;->deselect()V

    const/4 v2, -0x1

    .line 480
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 483
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    move-object v2, v0

    check-cast v2, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;->getPageLabelView()Landroid/widget/TextView;

    move-result-object v2

    .line 486
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p1, 0x8

    .line 487
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateThumbnailLabel(Landroid/widget/TextView;I)V

    .line 495
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result p1

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->sendThumbnailUpdateRequest(II)V

    return-void
.end method

.method private selectPage(IZZ)V
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 1201
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    .line 1202
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->centerSpecifiedPageIndex(IZ)V

    .line 1203
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->selectPageView(I)V

    .line 1204
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->pause()V

    .line 1205
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->postNavigationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1206
    new-instance p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;

    invoke-direct {p1, p0, p3, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;ZLcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->postNavigationRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xfa

    .line 1227
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectPageView(I)V
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->showSelectBox(Landroid/widget/RelativeLayout;)V

    :cond_0
    return-void
.end method

.method private showSelectBox(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 547
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->lastSelectedPageViewId:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 548
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    .line 549
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    .line 550
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;->deselect()V

    .line 551
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->lastSelectedPageViewId:I

    .line 555
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    .line 556
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;->select()V

    .line 557
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private stopScrolling()V
    .locals 3

    .line 1246
    :try_start_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1247
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1248
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1250
    instance-of v2, v0, Landroid/widget/OverScroller;

    if-eqz v2, :cond_0

    .line 1251
    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThumbnailScrubber"

    const-string v2, "Unable to stop scrolling"

    .line 1254
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateCustomChrome()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->customActionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    :cond_0
    return-void
.end method

.method private updateScrollState(Z)V
    .locals 3

    .line 437
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 438
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageNumberOffset()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 439
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->updateCache(I)V

    .line 440
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->cycleThumbnails()V

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->unmapNoClamp(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 446
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    :cond_0
    const/4 p1, 0x1

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->resetFocusability(Z)V

    return-void
.end method

.method private updateScrubberPageNumber(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 519
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->updateChapterTooltipText(Ljava/lang/String;I)V

    .line 521
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentScrubberPageNumber:I

    goto :goto_0

    .line 523
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentScrubberPageNumber:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentScrubberPageNumber:I

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->updateChapterTooltipText(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private warmUpThumbnailCache(Landroid/content/Context;)V
    .locals 8

    .line 777
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 778
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_bitmap_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 783
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_bitmap_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 784
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageCount(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result v4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->configureAndCreateSics(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;III)V

    .line 785
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->getThumbnailCachePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapHeight:I

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapWidth:I

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestCacheWarming(IILjava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public alignScrubberToCurrentReadingPage()V
    .locals 1

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->alignScrubberToCurrentReadingPage(Z)V

    return-void
.end method

.method public alignScrubberToCurrentReadingPage(Z)V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    const-string v1, "ThumbnailScrubber"

    if-eqz v0, :cond_5

    .line 632
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 636
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v2, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 645
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "posFactory returns null so aligningscrubber to current reading page cant be done"

    .line 649
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 655
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 656
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v2, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 657
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMinPosition(I)V

    .line 658
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMax(I)V

    .line 659
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    .line 660
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domain(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    goto :goto_1

    .line 637
    :cond_3
    :goto_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v1

    .line 638
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    .line 639
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMinPosition(I)V

    .line 640
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMax(I)V

    .line 641
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    .line 642
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domain(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    .line 663
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getCurrentPageIndex()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    .line 664
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 666
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->showSelectBox(Landroid/widget/RelativeLayout;)V

    .line 668
    :cond_4
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_2
    const-string p1, "kindleDoc or kindleDoc book info is null"

    .line 633
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->resetFocusability(Z)V

    .line 432
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result p1

    return p1
.end method

.method public drawRenderedThumbnail(II)V
    .locals 2

    .line 855
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isImageStillNeeded(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 856
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 857
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getImageView(I)Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->drawCachedThumbnail(IILandroid/widget/ImageView;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    move-result-object p2

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawCachedThumbnail status for page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method getImageView(I)Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 771
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    return-object p1
.end method

.method public getPageNumberOffset()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getSecurityPids()[Ljava/lang/String;
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getSecurityPids()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getShortPositionForPageIndex(Lcom/amazon/android/docviewer/KindleDocViewer;I)I
    .locals 0

    .line 1094
    instance-of p1, p1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz p1, :cond_0

    .line 1095
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    return p1

    .line 1096
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz p1, :cond_1

    .line 1097
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;
    .locals 1

    .line 505
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    return-object v0
.end method

.method public getValidPageRange()[I
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 844
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 845
    aget v4, v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 846
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v3, v2, v0

    return-object v2
.end method

.method public handleCancelledRendering(II)V
    .locals 2

    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isImageStillNeeded(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was CANCELLED but is still interesting! Ask again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailScrubber"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->sendThumbnailUpdateRequest(II)V

    .line 872
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendCenterSortedPendingRequests(I)V

    return-void
.end method

.method protected hasBookmarkForPageIndex(I)Z
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 1087
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    if-ne p1, v1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 1088
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 1089
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->bookmarkTree:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected hasWaypointForPageIndex(I)Z
    .locals 6

    .line 1054
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 1055
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1064
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1065
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1066
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v5

    .line 1070
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPositionForShortPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1071
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v4, v3}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    if-ne v3, p1, :cond_1

    return v5

    :cond_3
    :goto_0
    return v2
.end method

.method isImageStillNeeded(II)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    aget p1, v1, p1

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1

    return v1

    .line 826
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 827
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    aget p1, v2, p1

    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method isPdfDocViewer()Z
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public linkSeekbar(Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    .line 240
    invoke-virtual {p1, p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1338
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;->getAnnotations()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1339
    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->refreshBookmarks()V

    :cond_1
    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1329
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->refreshBookmarks()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 218
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_display_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->thumbnail_scrubber_display_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allImageViews:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    .line 225
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 227
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 228
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 229
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailDisplayWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDocViewerResourceAttached(Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 804
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 203
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 207
    div-int/lit8 p4, p4, 0x2

    const/4 p1, 0x0

    rsub-int/lit8 p2, p4, 0x0

    int-to-float p2, p2

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p4

    int-to-float p1, p1

    .line 213
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    invoke-virtual {p3, p2, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->range(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 563
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 564
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p1

    if-nez p1, :cond_1

    .line 572
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->positionToScrollX:Lcom/amazon/kindle/seekbar/LinearMapper;

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mapNoClamp(F)F

    move-result p1

    float-to-int p1, p1

    .line 573
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageNumberOffset()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSingleThumbnailWidth()I

    move-result v0

    div-int/2addr p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-ltz p1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalPages()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 577
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->suppressPageNumberUpdateOnScrollChange:Z

    if-nez v0, :cond_2

    .line 578
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateScrubberPageNumber(I)V

    :cond_2
    if-eqz p3, :cond_3

    .line 584
    new-instance p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;I)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    .line 419
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    const/4 p2, 0x0

    .line 421
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    sub-int/2addr p4, v0

    const/4 v0, 0x1

    if-lez p1, :cond_1

    if-lt p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-lt p1, p4, :cond_2

    if-le p1, p3, :cond_2

    const/4 p4, 0x1

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    if-gtz p1, :cond_3

    if-ge p1, p3, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    const/4 p2, 0x1

    .line 426
    :cond_5
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateScrollState(Z)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 603
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->cancelHideOverlaysAfterDelay()V

    const/4 p1, 0x0

    .line 608
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 405
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUpdateThumbnailScrubberEvent(Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageIndex(I)I

    move-result p1

    const/4 v0, 0x0

    .line 682
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->selectPage(IZZ)V

    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    .line 453
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    invoke-super/range {v1 .. v10}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public releaseScrubber()V
    .locals 1

    const/4 v0, 0x1

    .line 790
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isReleased:Z

    .line 791
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->bookmarkTree:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 793
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->unbind()V

    .line 794
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->shutdown()V

    return-void
.end method

.method public resetScrubber(Landroid/content/Context;)V
    .locals 2

    .line 715
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 718
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 722
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 724
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->customActionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    .line 726
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 728
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eq v1, v0, :cond_1

    .line 729
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestDocumentOpen()V

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-nez v0, :cond_2

    return-void

    .line 738
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageLabeler:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 739
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->refreshBookmarks()V

    .line 740
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getPageCount(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    .line 741
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->warmUpThumbnailCache(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 742
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->lastSelectedPageViewId:I

    const/16 p1, 0xd

    .line 743
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pagesInBook:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    .line 744
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->reset(I)V

    .line 746
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getCurrentPageIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    .line 747
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailRange(I)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;

    move-result-object p1

    .line 750
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    .line 751
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    .line 753
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allImageViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 754
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->loadInitialThumbnails()V

    .line 756
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getHeadPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getTailPaddingWidth(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 759
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->headPadding:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->layoutParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->tailPadding:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->currentPageIndex:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->centerSpecifiedPageIndex(IZ)V

    .line 763
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->resetTOC()V

    return-void
.end method

.method sendThumbnailUpdateRequest(II)V
    .locals 7

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->pageToViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getImageView(I)Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    move-result-object v1

    .line 532
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p2, v0, v1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->drawCachedThumbnail(IILandroid/widget/ImageView;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->NEEDS_RENDERING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->getCachedBitmapPath(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 534
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapWidth:I

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailBitmapHeight:I

    move v2, p2

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestBitmap(IILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method setSuppressPageNumberUpdateOnScrollChange(Z)V
    .locals 0

    .line 876
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->suppressPageNumberUpdateOnScrollChange:Z

    return-void
.end method

.method public shutdownScrubber()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->thumbnailClient:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->shutdown()V

    .line 799
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->imageCache:Lcom/amazon/kcp/reader/ui/AbstractImageCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->shutdown()V

    return-void
.end method

.method public updatePageLabelViews()V
    .locals 4

    .line 1259
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1260
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1261
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->allThumbnails:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1262
    instance-of v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;

    if-eqz v2, :cond_0

    .line 1263
    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;

    .line 1265
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1266
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->viewIdToPageArray:[I

    aget v1, v3, v1

    .line 1267
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;->getPageLabelView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->updateThumbnailLabel(Landroid/widget/TextView;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateThumbnailLabel(Landroid/widget/TextView;I)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->hasWaypointForPageIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "\u25bc"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getShortPositionForPageIndex(Lcom/amazon/android/docviewer/KindleDocViewer;I)I

    .line 360
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->hasBookmarkForPageIndex(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 361
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_bookmark:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$color;->dark_overlay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
