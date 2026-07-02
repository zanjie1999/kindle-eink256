.class public Lcom/amazon/kcp/library/ui/BookCoverView;
.super Landroid/widget/FrameLayout;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;,
        Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    }
.end annotation


# static fields
.field private static final OVERLAY_DROP_SHADOW_RADIUS:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_SCALE_INHIBITOR:F = 0.4f


# instance fields
.field private additionalDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/application/extension/IAdditionalCoverDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private authorTag:Landroid/widget/TextView;

.field private bannerText:Ljava/lang/String;

.field private bookReadingProgress:Ljava/lang/Integer;

.field private cloud:Landroid/graphics/drawable/Drawable;

.field private cover:Lcom/amazon/kcp/library/ui/Cover;

.field private coverImageBoundsWithoutPages:Landroid/graphics/Rect;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private drawCloud:Z

.field private isShowingDefaultCover:Z

.field private keepMargin:I

.field private keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private keepTag:Landroid/widget/TextView;

.field private titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private titleTag:Landroid/widget/TextView;

.field private updatableAsin:Ljava/lang/String;

.field private updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

.field private updatableCoverBook:Lcom/amazon/kindle/model/content/IListableBook;

.field private updatableType:Lcom/amazon/kcp/library/models/BookType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    .line 159
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    .line 161
    sget-object p1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 162
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 163
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 164
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bannerText:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bookReadingProgress:Ljava/lang/Integer;

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/ui/BookCoverView;)Lcom/amazon/kcp/library/ui/Cover;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/ui/BookCoverView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/ui/BookCoverView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method

.method private convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I
    .locals 4

    .line 354
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 362
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized overlay visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 360
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method private resetUpdatableCover()V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    :cond_0
    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 273
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kindle/model/content/IListableBook;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 275
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kindle/model/content/IBookID;III)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 277
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v3, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kindle/model/content/IBookID;III)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 280
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_3

    .line 281
    new-instance v1, Lcom/amazon/kcp/library/ui/BookCoverView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/BookCoverView$1;-><init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    :cond_3
    return-void
.end method

.method private setDynamicFontSizes(I)V
    .locals 4

    .line 541
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->library_grid_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    .line 551
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->library_cover_title_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, p1

    const/4 v2, 0x0

    .line 550
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    .line 553
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->library_cover_subtitle_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float p1, p1, v1

    .line 552
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateOverlaysVisibility()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 576
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 578
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bookReadingProgress:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->drawBookReadingProgress(Landroid/graphics/Canvas;I)V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bannerText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->drawBanner(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 589
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->dispatchDrawAdditionalItems(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchDrawAdditionalItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->additionalDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/extension/IAdditionalCoverDrawable;

    .line 595
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    invoke-interface {v1, p1, v2}, Lcom/amazon/kcp/application/extension/IAdditionalCoverDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawBanner(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_2

    .line 609
    iget-object v3, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 615
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->cover_banner_font_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 617
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 620
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    .line 621
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 622
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 623
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v3, v5

    const/high16 v8, 0x41a00000    # 20.0f

    add-float/2addr v8, v4

    mul-float v8, v8, v8

    div-float/2addr v8, v5

    float-to-double v8, v8

    .line 629
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 631
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v7, v7, v11

    add-float/2addr v7, v8

    .line 634
    iget-object v11, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-gtz v11, :cond_2

    iget-object v11, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    .line 635
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-lez v11, :cond_1

    goto/16 :goto_0

    .line 640
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 641
    iget-object v12, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 642
    iget-object v12, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 643
    iget-object v12, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 644
    iget-object v12, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v13, v7

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 645
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 648
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    sub-float v13, v7, v8

    div-float/2addr v13, v5

    add-float/2addr v8, v13

    .line 650
    iget-object v13, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v14, v8

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v12, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 651
    iget-object v13, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v13, v8

    invoke-virtual {v12, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    float-to-double v13, v8

    mul-double v15, v13, v9

    mul-double v15, v15, v13

    .line 654
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double/2addr v13, v9

    move-object v8, v6

    float-to-double v5, v4

    div-double/2addr v5, v9

    sub-double/2addr v13, v5

    double-to-float v4, v13

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v6, -0x1000000

    const/4 v9, 0x0

    .line 660
    invoke-virtual {v8, v3, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 661
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 663
    invoke-virtual {v1, v11, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 665
    invoke-virtual {v8, v9, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 666
    new-instance v3, Landroid/graphics/LinearGradient;

    iget-object v6, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v9, v6

    sub-float v14, v9, v7

    const/4 v15, 0x0

    int-to-float v6, v6

    const/16 v17, 0x0

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/amazon/kindle/krl/R$color;->cover_overlay_gradient_start:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/amazon/kindle/krl/R$color;->cover_overlay_gradient_end:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v3

    move/from16 v16, v6

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 669
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 670
    invoke-virtual {v1, v11, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 673
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, -0x1

    .line 674
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v6, v8

    .line 675
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected drawBookReadingProgress(Landroid/graphics/Canvas;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 686
    iget-object v2, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\ufe6a"

    .line 698
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 699
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/krl/R$dimen;->cover_banner_font_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 701
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 703
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 704
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v7, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 706
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x2

    const-string v10, "00"

    .line 707
    invoke-virtual {v4, v10, v8, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 709
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 710
    invoke-virtual {v4, v3, v8, v5, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 712
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 713
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3fe66666    # 1.8f

    mul-float v8, v8, v7

    float-to-int v8, v8

    const v10, 0x3f99999a    # 1.2f

    mul-float v5, v5, v10

    float-to-int v5, v5

    .line 720
    iget-object v10, v0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->top:I

    add-int v12, v11, v8

    .line 722
    iget v13, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v14, 0x41a00000    # 20.0f

    div-float/2addr v10, v14

    float-to-int v10, v10

    sub-int/2addr v13, v10

    sub-int v10, v13, v5

    .line 726
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    int-to-float v10, v10

    int-to-float v11, v11

    .line 727
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v15, v13

    .line 728
    invoke-virtual {v14, v15, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v12, 0x8

    int-to-float v0, v0

    .line 729
    invoke-virtual {v14, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 730
    div-int/lit8 v15, v5, 0x2

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v12, v12

    invoke-virtual {v14, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 731
    invoke-virtual {v14, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 732
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v13, -0x1000000

    const/4 v15, 0x0

    .line 735
    invoke-virtual {v4, v12, v15, v15, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 736
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 738
    invoke-virtual {v1, v14, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 741
    invoke-virtual {v4, v15, v15, v15, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 742
    new-instance v12, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lcom/amazon/kindle/krl/R$color;->cover_overlay_gradient_start:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lcom/amazon/kindle/krl/R$color;->cover_overlay_gradient_end:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v12

    move/from16 v17, v11

    move/from16 v19, v0

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 745
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 746
    invoke-virtual {v1, v14, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 749
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, -0x1

    .line 750
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v0, v12

    sub-int/2addr v5, v0

    int-to-float v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v10, v0

    int-to-float v0, v8

    sub-float/2addr v0, v7

    div-float/2addr v0, v5

    add-float/2addr v11, v0

    add-float/2addr v11, v7

    .line 753
    invoke-virtual {v1, v2, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 754
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v10, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v3, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCover()Lcom/amazon/kcp/library/ui/Cover;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/Cover;->unbindDrawables()V

    .line 528
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 409
    sget v0, Lcom/amazon/kindle/krl/R$id;->title_tag:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    .line 410
    sget v0, Lcom/amazon/kindle/krl/R$id;->author_tag:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    .line 411
    sget v0, Lcom/amazon/kindle/krl/R$id;->keep_tag:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    .line 412
    sget v0, Lcom/amazon/kindle/krl/R$id;->lib_book_cell_download_progress_downloading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 413
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->progress_horizontal_downloading:I

    sget v3, Lcom/amazon/kindle/krl/R$drawable;->progress_horizontal_paused:I

    const v4, 0x108006d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 416
    sget v0, Lcom/amazon/kindle/krl/R$id;->cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/Cover;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->library_cover_keep_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepMargin:I

    .line 421
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 422
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 423
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setState(Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 444
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 446
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p4, p5, p2}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    .line 449
    iget-object p4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    iget p5, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, p5, p3, v1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 453
    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-eq p3, p4, :cond_0

    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 454
    :goto_0
    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    .line 455
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    add-int/2addr v0, p5

    shr-int/lit8 p3, v0, 0x1

    .line 456
    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 457
    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 460
    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 457
    invoke-virtual {p5, v1, p3, v0, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 463
    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepMargin:I

    sub-int/2addr p5, v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    .line 466
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 463
    invoke-virtual {p3, p5, v2, v1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 469
    iget-boolean p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 471
    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    .line 473
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/amazon/kindle/krl/R$dimen;->library_cover_cloud_vertical_padding:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 474
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->library_cover_cloud_horizontal_padding:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    float-to-int p5, p5

    .line 476
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p5

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    .line 477
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, p3

    iget p3, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p5

    sub-int/2addr p3, p2

    invoke-direct {v1, v2, v3, v5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 483
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$dimen;->cover_overlay_progress_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 484
    iget-object p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 485
    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getVisibility()I

    move-result p5

    if-ne p5, p4, :cond_3

    iget-object p4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    .line 487
    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p4, p5

    :goto_1
    sub-int/2addr p4, p2

    .line 489
    iget-object p5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->coverImageBoundsWithoutPages:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    .line 492
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3, p4, p5, p2}, Landroid/widget/ProgressBar;->layout(IIII)V

    if-eqz p1, :cond_4

    .line 508
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/kcp/library/ui/BookCoverView$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/ui/BookCoverView$2;-><init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/ui/Cover;->onMeasure(II)V

    .line 430
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 433
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object p1

    .line 434
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setDynamicFontSizes(I)V

    .line 437
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/TextView;->measure(II)V

    .line 438
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 439
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 519
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 520
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 321
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method

.method public setBannerOverlayText(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bannerText:Ljava/lang/String;

    return-void
.end method

.method public setBookReadingProgress(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bookReadingProgress:Ljava/lang/Integer;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->bookReadingProgress:Ljava/lang/Integer;

    return-void
.end method

.method public setBookType(Lcom/amazon/kcp/library/models/BookType;)V
    .locals 1

    .line 383
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 394
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    :goto_0
    return-void
.end method

.method public setCoverDrawablesList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/application/extension/IAdditionalCoverDrawable;",
            ">;)V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->additionalDrawables:Ljava/util/ArrayList;

    return-void
.end method

.method public setCoverImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kindle/model/content/IListableBook;

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/Cover;->setCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iput-boolean p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    .line 207
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method

.method public setCoverSource(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 241
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kindle/model/content/IListableBook;

    .line 242
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    .line 243
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:Lcom/amazon/kcp/library/models/BookType;

    .line 244
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    return-void
.end method

.method public setCoverSource(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 257
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kindle/model/content/IListableBook;

    .line 258
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:Lcom/amazon/kcp/library/models/BookType;

    .line 260
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    return-void
.end method

.method public setKeepVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 299
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method

.method public setState(Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 310
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method
