.class public Lcom/amazon/xray/ui/widget/TimelineSeekBar;
.super Landroid/view/ViewGroup;
.source "TimelineSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;,
        Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;,
        Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actualSeekBarWidth:I

.field private final backgroundView:Landroid/view/View;

.field private final barDrawable:Landroid/graphics/drawable/Drawable;

.field private crl:I

.field private final crlDrawable:Landroid/graphics/drawable/Drawable;

.field private final crlView:Landroid/view/View;

.field private erl:I

.field private final eventDrawable:Landroid/graphics/drawable/Drawable;

.field private events:[I

.field private externalListener:Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

.field private fpr:I

.field private final needleDrawable:Landroid/graphics/drawable/Drawable;

.field private needleEndPosition:I

.field private needleIsRange:Z

.field private final needleOffset:I

.field private needlePosition:I

.field private final needleRangeDrawable:Landroid/graphics/drawable/Drawable;

.field private final needleRangeDrawablePadding:Landroid/graphics/Rect;

.field private final needleView:Landroid/view/View;

.field private scale:F

.field private final seekBar:Landroid/widget/SeekBar;

.field private seekBarStartPosition:I

.field private final spoilerCapDrawable:Landroid/graphics/drawable/Drawable;

.field private final spoilerDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private spoilerIndex:I

.field private final spoilerTileDrawable:Landroid/graphics/drawable/Drawable;

.field private final tickDrawable:Landroid/graphics/drawable/Drawable;

.field private ticks:[I

.field private final timelineDrawablePadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->timelineDrawablePadding:Landroid/graphics/Rect;

    .line 64
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawablePadding:Landroid/graphics/Rect;

    const/4 p2, 0x0

    new-array v0, p2, [I

    .line 70
    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    new-array v0, p2, [I

    .line 73
    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->ticks:[I

    const v0, 0x7fffffff

    .line 92
    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crl:I

    .line 95
    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->erl:I

    .line 98
    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    .line 101
    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerIndex:I

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    sget v1, Lcom/amazon/kindle/xray/R$dimen;->xray_padding_timeline_seek_bar_needle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleOffset:I

    .line 123
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineSpoilerGuardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerTileDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineSpoilerGuardLeftBorder()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineSpoilerGuardCapBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerCapDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelinePassageMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->eventDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineChapterMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelinePositionRangeMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelinePositionMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTimelineCrlMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->timelineDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 136
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 140
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    .line 141
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    new-instance v1, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;-><init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;Lcom/amazon/xray/ui/widget/TimelineSeekBar$1;)V

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    .line 147
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    .line 153
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 162
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 163
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/amazon/xray/ui/widget/EmptyDrawable;

    invoke-direct {v1}, Lcom/amazon/xray/ui/widget/EmptyDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 166
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/amazon/xray/ui/widget/EmptyDrawable;

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, p2, v3}, Lcom/amazon/xray/ui/widget/EmptyDrawable;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;Lcom/amazon/xray/ui/widget/TimelineSeekBar$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->timelineDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->timelineDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 169
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    invoke-virtual {p1, v1, p2, v0, p2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 173
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 175
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->ticks:[I

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->eventDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerCapDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerTileDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->externalListener:Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/Rect;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->timelineDrawablePadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->erl:I

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/widget/TimelineSeekBar;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getXForPosition(I)I

    move-result p0

    return p0
.end method

.method private static getTicks(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;)[I"
        }
    .end annotation

    .line 187
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 189
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getXForPosition(I)I
    .locals 1

    .line 369
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->scale:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 373
    :cond_0
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->actualSeekBarWidth:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private positionCrlView(Z)V
    .locals 5

    if-eqz p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 429
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getBottom()I

    move-result v1

    .line 431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    .line 432
    iget v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crl:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 433
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    sub-int v0, v1, v0

    add-int/2addr p1, v2

    invoke-virtual {v3, v2, v0, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 436
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlView:Landroid/view/View;

    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crl:I

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getXForPosition(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private positionNeedleView(Z)V
    .locals 5

    .line 451
    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleIsRange:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 454
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleOffset:I

    add-int/2addr v0, v1

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 456
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    iget v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needlePosition:I

    .line 457
    invoke-direct {p0, v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getXForPosition(I)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleEndPosition:I

    .line 459
    invoke-direct {p0, v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getXForPosition(I)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    add-int/2addr p1, v0

    .line 456
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 461
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 466
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleOffset:I

    add-int/2addr v1, v2

    .line 468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    .line 469
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    add-int/2addr p1, v2

    add-int/2addr v0, v1

    invoke-virtual {v3, v2, v1, p1, v0}, Landroid/view/View;->layout(IIII)V

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needlePosition:I

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getXForPosition(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private updateScale()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->actualSeekBarWidth:I

    int-to-float v0, v0

    .line 359
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->scale:F

    return-void
.end method


# virtual methods
.method public getEventIndexForPosition(I)I
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length v0, v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 498
    :cond_0
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    const v2, 0x7fffffff

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerIndex:I

    if-eq v0, v2, :cond_1

    return v0

    .line 503
    :cond_1
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    const/4 v3, 0x0

    if-gt p1, v0, :cond_2

    return v3

    .line 505
    :cond_2
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->erl:I

    if-lt p1, v0, :cond_3

    .line 506
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 512
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 513
    aget v4, v0, v3

    if-ne v4, p1, :cond_4

    return v3

    .line 515
    :cond_4
    aget v0, v0, v3

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 517
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    aget v0, v0, v3

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v2, v0

    move v1, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 403
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 404
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 405
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 406
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr p5, p2

    iget p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleOffset:I

    sub-int/2addr p5, p2

    .line 407
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int p2, p5, p2

    .line 410
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/SeekBar;->layout(IIII)V

    .line 411
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 412
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->updateScale()V

    const/4 p1, 0x1

    .line 415
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionCrlView(Z)V

    .line 416
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionNeedleView(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 391
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->barDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleOffset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 397
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMeasuredState()I

    move-result v1

    const v2, 0x7fffffff

    invoke-static {v2, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 398
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMeasuredState()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 396
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 385
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCrl(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->crl:I

    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionCrlView(Z)V

    return-void
.end method

.method public setEvents([I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    .line 236
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFpr(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    .line 226
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionNeedleView(Z)V

    return-void
.end method

.method public setNeedlePosition(I)V
    .locals 2

    .line 275
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needlePosition:I

    .line 278
    iget-boolean p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleIsRange:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 279
    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleIsRange:Z

    .line 280
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionNeedleView(Z)V

    return-void
.end method

.method public setNeedlePositionByEventIndexAndPercent(ID)V
    .locals 5

    if-ltz p1, :cond_5

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    if-gtz p1, :cond_0

    goto :goto_3

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_4

    cmpl-double v4, p2, v0

    if-lez v4, :cond_1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_1

    goto :goto_2

    :cond_1
    if-gez v2, :cond_2

    .line 328
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_1

    :cond_2
    if-lez v4, :cond_3

    .line 330
    iget v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    aget v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 332
    :cond_3
    :goto_1
    iget v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->fpr:I

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    aget p1, v3, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v2, p1

    mul-double p2, p2, v0

    add-double/2addr v2, p2

    double-to-int p1, v2

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedlePosition(I)V

    return-void

    .line 320
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedlePosition(I)V

    return-void

    .line 316
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedlePosition(I)V

    return-void
.end method

.method public setNeedleRange(Lcom/amazon/xray/model/object/PositionRange;)V
    .locals 1

    .line 293
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needlePosition:I

    .line 294
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleEndPosition:I

    .line 297
    iget-boolean p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleIsRange:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleIsRange:Z

    .line 299
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleView:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->needleRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->positionNeedleView(Z)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->externalListener:Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    return-void
.end method

.method public setPositionByEventIndex(I)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/amazon/xray/util/MathUtil;->constrain(III)I

    move-result p1

    .line 343
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->events:[I

    aget p1, v1, p1

    iget v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setReadingRange(Lcom/amazon/xray/model/object/PositionRange;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    .line 201
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    const p1, 0x7fffffff

    .line 202
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->erl:I

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBarStartPosition:I

    .line 205
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 206
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->erl:I

    .line 208
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSpoilerIndex(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->spoilerIndex:I

    return-void
.end method

.method public setToc(Lcom/amazon/kindle/krx/reader/ITableOfContents;)V
    .locals 4

    .line 244
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/TocUtil;->getFlattenedTocItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;)Ljava/util/List;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$integer;->xray_seek_bar_max_ticks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 249
    sget-object v1, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many ticks, suppressing. [count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 250
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->ticks:[I

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getTicks(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->ticks:[I

    .line 255
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
