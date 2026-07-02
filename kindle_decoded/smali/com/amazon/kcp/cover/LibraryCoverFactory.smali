.class public Lcom/amazon/kcp/cover/LibraryCoverFactory;
.super Ljava/lang/Object;
.source "LibraryCoverFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;
    }
.end annotation


# static fields
.field public static final BOOK_PREFIX_HEIGHT:I

.field private static final CAROUSEL_COVER_HEIGHT:I

.field private static final CAROUSEL_COVER_PADDING:I

.field public static final DEEP_STACK_HEIGHT:I

.field private static final DEFAULT_CAROUSEL_COVER_HEIGHT:I

.field private static final DEFAULT_CAROUSEL_COVER_WIDTH:I

.field private static final DOWNLOAD_PROGRESS_HEIGHT:I

.field private static final GRID_COVER_PADDING:I

.field public static final LIST_COVER_HEIGHT:I

.field public static final LIST_COVER_WIDTH:I

.field private static final RESOURCES:Landroid/content/res/Resources;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    const-class v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    .line 31
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->library_gallery_cover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->CAROUSEL_COVER_HEIGHT:I

    .line 32
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->badge_padding_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->CAROUSEL_COVER_PADDING:I

    .line 33
    sget v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->CAROUSEL_COVER_HEIGHT:I

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    div-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DEFAULT_CAROUSEL_COVER_WIDTH:I

    .line 34
    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DEFAULT_CAROUSEL_COVER_HEIGHT:I

    .line 35
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->badge_padding_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->GRID_COVER_PADDING:I

    .line 36
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->download_progress_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DOWNLOAD_PROGRESS_HEIGHT:I

    .line 38
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->library_book_row_cover_container_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->LIST_COVER_WIDTH:I

    .line 39
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->library_book_row_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->LIST_COVER_HEIGHT:I

    .line 40
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->library_grid_book_prefix_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->BOOK_PREFIX_HEIGHT:I

    .line 41
    sget-object v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->library_grid_series_deep_stack:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DEEP_STACK_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCheckableGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;IIILcom/amazon/kcp/cover/badge/BadgeSource;)Lcom/amazon/kcp/cover/CheckableFrameLayout;
    .locals 0

    .line 195
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object p0

    .line 196
    sget-object p3, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p0, p1, p3, p5}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p0

    .line 198
    check-cast p2, Lcom/amazon/kcp/cover/CheckableFrameLayout;

    const/4 p3, 0x0

    .line 199
    invoke-virtual {p2, p3}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    .line 200
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 201
    invoke-virtual {p3}, Lcom/amazon/kcp/cover/BadgeableCover;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->isSameBook(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    .line 202
    invoke-virtual {p3, p6}, Lcom/amazon/kcp/cover/BadgeableCover;->setBadgeSource(Lcom/amazon/kcp/cover/badge/BadgeSource;)V

    .line 203
    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 204
    invoke-virtual {p3, p0}, Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    return-object p2
.end method

.method public static bindCollectionThumbnail(Lcom/amazon/kindle/collections/dto/ICollection;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 280
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/cover/ICollectionThumbnail;

    invoke-interface {v0, p0, p2}, Lcom/amazon/kcp/cover/ICollectionThumbnail;->setCollectionData(Lcom/amazon/kindle/collections/dto/ICollection;I)V

    return-object p1
.end method

.method public static bindDetailsGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 10

    .line 138
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->details_grid_item:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/DetailsGridItem;

    .line 139
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/DetailsGridItem;->bindToCover()V

    return-object v0
.end method

.method public static bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 10

    .line 121
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->grid_cover:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    .line 374
    invoke-static/range {v0 .. v10}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIIZLcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIIZLcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 2

    .line 381
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    .line 382
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v0, p2, v1, p8}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p8

    .line 385
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    if-nez v0, :cond_0

    .line 388
    invoke-static {p0, p1, p5, p6, p7}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newGridCoverWithLayout(Landroid/content/Context;IIII)Landroid/view/View;

    move-result-object p3

    .line 389
    sget p0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    :cond_0
    const/4 p0, 0x0

    const/4 p6, 0x0

    .line 394
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->grid_cover:I

    if-ne v1, p1, :cond_2

    .line 395
    invoke-static {p3, p2, p10}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->showBookPrefix(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    sget p1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->BOOK_PREFIX_HEIGHT:I

    add-int/2addr p0, p1

    .line 398
    :cond_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->series_grid_deep_stack:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 399
    invoke-static {p1, p2, p4, p10}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->showDeepStack(Landroid/widget/LinearLayout;Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    new-instance p6, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;

    invoke-direct {p6}, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;-><init>()V

    .line 401
    invoke-virtual {p6, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory$DeepStackUpdateListener;->setDeepStack(Landroid/widget/LinearLayout;)V

    .line 402
    sget p1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DEEP_STACK_HEIGHT:I

    add-int/2addr p0, p1

    :cond_2
    if-eqz p0, :cond_3

    .line 406
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    add-int/2addr p5, p7

    add-int/2addr p5, p0

    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 409
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/BadgeableCover;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->isSameBook(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    .line 410
    invoke-virtual {v0, p6}, Lcom/amazon/kcp/cover/BadgeableCover;->setListener(Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;)V

    .line 411
    invoke-virtual {v0, p10}, Lcom/amazon/kcp/cover/BadgeableCover;->setBadgeSource(Lcom/amazon/kcp/cover/badge/BadgeSource;)V

    .line 412
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 413
    invoke-virtual {v0, p4}, Lcom/amazon/kcp/cover/BadgeableCover;->setIsConsolidated(Z)V

    .line 414
    invoke-virtual {v0, p8}, Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    .line 415
    invoke-virtual {v0, p9}, Lcom/amazon/kcp/cover/BadgeableCover;->setOverflowMenuIcon(Z)V

    return-object p3
.end method

.method public static bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 7

    .line 236
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_library_book_row:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRowWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static bindListRowWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 3

    .line 320
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    .line 321
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 324
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 327
    :cond_0
    invoke-interface {v0, p2, v1, p5}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p5

    .line 329
    instance-of v0, p3, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    if-nez v0, :cond_1

    .line 331
    invoke-static {p0, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newListRowWithLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p3

    .line 334
    :cond_1
    check-cast p3, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    .line 335
    invoke-virtual {p3}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->isSameBook(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->reset(Z)V

    .line 336
    invoke-virtual {p3, p4}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setIsConsolidated(Z)V

    .line 337
    invoke-virtual {p3, p6}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setBadgeSource(Lcom/amazon/kcp/cover/badge/BadgeSource;)V

    .line 338
    invoke-virtual {p3, p2, p4}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setDisplayData(Lcom/amazon/kcp/library/ILibraryDisplayItem;Z)V

    .line 339
    invoke-virtual {p3, p5}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    return-object p3
.end method

.method public static bindResumeCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 10

    .line 163
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->resume_cover:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCoverWithLayout(Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static isSameBook(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newCheckableGridCover(Landroid/content/Context;III)Lcom/amazon/kcp/cover/CheckableFrameLayout;
    .locals 2

    .line 176
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->grid_cover_multi_select:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;

    .line 177
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    add-int/2addr p3, p1

    const/4 v1, -0x2

    invoke-direct {v0, v1, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 179
    invoke-static {p3, p2, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpCover(Lcom/amazon/kcp/cover/BadgeableCover;II)V

    return-object p0
.end method

.method public static newCollectionThumbnail(Landroid/content/Context;IILcom/amazon/kindle/collections/dto/ThumbnailType;)Landroid/view/View;
    .locals 2

    .line 262
    sget-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->NUMBERED:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 263
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->numbered_collection_view:I

    invoke-static {p0, p3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 265
    :cond_0
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->collection_view:I

    invoke-static {p0, p3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 267
    :goto_0
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public static newDetailsGridCover(Landroid/content/Context;II)Landroid/view/View;
    .locals 2

    .line 101
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->details_grid_item:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 102
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 103
    invoke-static {v0, p2, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpCover(Lcom/amazon/kcp/cover/BadgeableCover;II)V

    return-object p0
.end method

.method public static newGridCover(Landroid/content/Context;III)Landroid/view/View;
    .locals 1

    .line 89
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->grid_cover:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newGridCoverWithLayout(Landroid/content/Context;IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static newGridCoverWithLayout(Landroid/content/Context;IIII)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 350
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    add-int/2addr p4, p2

    const/4 v0, -0x2

    invoke-direct {p1, v0, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 352
    invoke-static {p1, p3, p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpCover(Lcom/amazon/kcp/cover/BadgeableCover;II)V

    return-object p0
.end method

.method public static newListRow(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 222
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_library_book_row:I

    invoke-static {p0, v0}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newListRowWithLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static newListRowWithLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 308
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 309
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public static recycleCheckableGridCover(Landroid/view/View;)V
    .locals 1

    .line 210
    check-cast p0, Lcom/amazon/kcp/cover/CheckableFrameLayout;

    .line 211
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/BadgeableCover;

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    return-void
.end method

.method public static recycleCollectionThumbnail(Landroid/view/View;)V
    .locals 1

    .line 290
    instance-of v0, p0, Lcom/amazon/kcp/cover/ICollectionThumbnail;

    if-eqz v0, :cond_0

    .line 291
    check-cast p0, Lcom/amazon/kcp/cover/ICollectionThumbnail;

    invoke-interface {p0}, Lcom/amazon/kcp/cover/ICollectionThumbnail;->reset()V

    :cond_0
    return-void
.end method

.method public static recycleDetailsGridCover(Landroid/view/View;)V
    .locals 1

    .line 156
    check-cast p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DetailsGridItem;->reset(Z)V

    return-void
.end method

.method public static recycleGridCover(Landroid/view/View;)V
    .locals 1

    .line 149
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    :cond_0
    return-void
.end method

.method public static recycleListRow(Landroid/view/View;)V
    .locals 1

    .line 245
    instance-of v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->reset(Z)V

    :cond_0
    return-void
.end method

.method private static setUpCover(Lcom/amazon/kcp/cover/BadgeableCover;II)V
    .locals 1

    .line 363
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->setDefaultSize(II)V

    .line 365
    sget p1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->GRID_COVER_PADDING:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setPadding(I)V

    .line 366
    sget p1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->DOWNLOAD_PROGRESS_HEIGHT:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setDownloadProgressHeight(I)V

    return-void
.end method

.method public static setUpResumeCover(Landroid/view/View;II)Landroid/view/View;
    .locals 1

    .line 357
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 358
    invoke-static {v0, p2, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpCover(Lcom/amazon/kcp/cover/BadgeableCover;II)V

    return-object p0
.end method

.method static showBookPrefix(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 4

    .line 426
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_number:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 427
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowBookCountWithPrefix(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_library_series_book_number_prefix:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v2

    :cond_0
    const/16 p1, 0x8

    .line 432
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return v0
.end method

.method static showDeepStack(Landroid/widget/LinearLayout;Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 0

    .line 441
    invoke-static {p1, p3, p2}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowDeepStack(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p1, 0x8

    .line 445
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return p2
.end method
