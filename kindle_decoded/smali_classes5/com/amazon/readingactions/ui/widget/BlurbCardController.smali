.class public final Lcom/amazon/readingactions/ui/widget/BlurbCardController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "BlurbCardController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;,
        Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;,
        Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;,
        Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;,
        Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurbCardController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurbCardController.kt\ncom/amazon/readingactions/ui/widget/BlurbCardController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,466:1\n1230#2:467\n1299#2,3:468\n*E\n*S KotlinDebug\n*F\n+ 1 BlurbCardController.kt\ncom/amazon/readingactions/ui/widget/BlurbCardController\n*L\n207#1:467\n207#1,3:468\n*E\n"
.end annotation


# static fields
.field private static final BLURB_AUTHOR_NAME_TYPEFACE_FILE:Ljava/lang/String; = "fonts/BookerlyDisplay_Bd.ttf"

.field public static final Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;

.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

.field private final blurbAuthorImageHeight:I

.field private final blurbAuthorImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field private final blurbCardCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;

.field private final bookCoverListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/listeners/KUInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final coverImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final imageHeight:I

.field private final programImageHeight:I

.field private final programImageUrl:Lcom/amazon/startactions/storage/ImageDownloader;

.field private final recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;

    .line 84
    const-class v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)V
    .locals 8

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->bookCoverListeners:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EndActionsPlugin.sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v3, Lcom/amazon/kindle/ea/R$dimen;->readingactions_blurb_rec_image_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->imageHeight:I

    .line 75
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    sget v3, Lcom/amazon/kindle/ea/R$dimen;->readingactions_blurb_author_image_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImageHeight:I

    .line 77
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_program_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageHeight:I

    .line 95
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->getAsins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_pb"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramDarkImageUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageHeight:I

    invoke-static {v1, v2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloader;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramLightImageUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageHeight:I

    invoke-static {v1, v2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloader;-><init>(Ljava/lang/String;)V

    .line 96
    :goto_0
    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageUrl:Lcom/amazon/startactions/storage/ImageDownloader;

    .line 101
    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImageHeight:I

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forBlurbAuthors(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    const-string v1, "ImageBatchDownloader.for\u2026, blurbAuthorImageHeight)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->coverImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 104
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbCardCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;

    .line 105
    new-instance v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v2

    .line 106
    sget-object v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getIsEndActionsBottomSheetOpened()Z

    move-result v4

    .line 107
    iget v5, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->imageHeight:I

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getShowBadges()Z

    move-result v6

    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbCardCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;

    move-object v1, v0

    .line 105
    invoke-direct/range {v1 .. v7}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;-><init>(Ljava/util/List;Lcom/amazon/kindle/krx/ui/ColorMode;ZIZLcom/amazon/readingactions/helpers/KUImageHandler;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    return-void
.end method

.method public static final synthetic access$getBlurbAdapter$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBlurbAuthorImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static final synthetic access$getBlurbAuthorImages$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method public static final synthetic access$getCoverImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->coverImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static final synthetic access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    return-object p0
.end method

.method public static final synthetic access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic access$loadDetailPage(Lcom/amazon/readingactions/ui/widget/BlurbCardController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->loadDetailPage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateAndReloadAuthorImage(Lcom/amazon/readingactions/ui/widget/BlurbCardController;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->updateAndReloadAuthorImage(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private final getAsins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 469
    check-cast v2, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    .line 207
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final listenForLoadedImages()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->listenForImageLoad()V

    .line 194
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$listenForLoadedImages$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$listenForLoadedImages$1;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->listen(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    return-void
.end method

.method private final loadDetailPage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    .line 230
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x2

    aput-object p3, v2, v5

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%s_%s_%s"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v5, "DidAnything"

    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 233
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 234
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 235
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".%d"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 237
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object p2, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v2, "AnyActionsBlurbCardWidget"

    invoke-static {p1, p2, v1, p3, v2}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string p3, "BlurbCardWidget"

    invoke-static {p3, p1, p2}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setRecyclerViewContext(Landroid/view/View;)V
    .locals 3

    .line 182
    sget v0, Lcom/amazon/kindle/ea/R$id;->recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    new-instance p1, Lcom/amazon/readingactions/ui/helpers/StartSnapHelper;

    invoke-direct {p1}, Lcom/amazon/readingactions/ui/helpers/StartSnapHelper;-><init>()V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/StartSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    :cond_0
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    .line 186
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->listenForLoadedImages()V

    .line 189
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void

    .line 182
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setText(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1

    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 202
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)Lcom/amazon/readingactions/ui/widget/BlurbCardController;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$Companion;->tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    move-result-object p0

    return-object p0
.end method

.method private final updateAndReloadAuthorImage(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 219
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImageList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->getBlurbAuthorImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 220
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAdapter:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_blurbcard:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 159
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_blurb_card_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/TextView;

    .line 160
    sget v1, Lcom/amazon/kindle/ea/R$id;->readingactions_blurb_card_byLine:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/amazon/kindle/ea/R$id;->readingactions_program_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    sget-object v2, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    invoke-virtual {v2, p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->setTitleStyle(Landroid/widget/TextView;)V

    .line 163
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v2}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    sget v4, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-virtual {v3, v4}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->setText(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 164
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {p2}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getByLine()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_byline_text_color:I

    invoke-virtual {v2, v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v2

    invoke-direct {p0, v1, p2, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->setText(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 165
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageUrl:Lcom/amazon/startactions/storage/ImageDownloader;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Lcom/amazon/startactions/storage/ImageDownloader;->apply(Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V

    const-string/jumbo p2, "view"

    .line 174
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->setRecyclerViewContext(Landroid/view/View;)V

    .line 176
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 177
    new-instance p2, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$2;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$2;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 146
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedBlurbCardWidget"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "rsMetadata"

    .line 149
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v2}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v3, "EndActionsPlugin.sdk"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsBlurbCardWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v0

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 118
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageUrl:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->load()V

    .line 119
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->load()V

    .line 122
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    .line 123
    new-instance v9, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->imageHeight:I

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->getAsins()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iget-object v8, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbCardCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbCardCoverImageHandler;

    move-object v2, v9

    move-object v3, v1

    .line 123
    invoke-direct/range {v2 .. v8}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;ILjava/util/List;Landroid/view/View;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;Lcom/amazon/readingactions/helpers/KUImageHandler;)V

    .line 125
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->bookCoverListeners:Ljava/util/Map;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const-string/jumbo v4, "rec.asin"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v2

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-virtual {v2, v1, v9}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->getAsins()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v2}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_pb"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onUiDismiss()V
    .locals 4

    .line 139
    invoke-super {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onUiDismiss()V

    .line 140
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->bookCoverListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->blurbAuthorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 112
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->programImageUrl:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->download()V

    .line 113
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->download()V

    return-void
.end method
