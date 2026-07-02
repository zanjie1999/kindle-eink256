.class public final Lcom/amazon/readingactions/ui/widget/BookGridController;
.super Lcom/amazon/anyactions/ui/widget/BookGridBase;
.source "BookGridController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;,
        Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;,
        Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;,
        Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookGridController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookGridController.kt\ncom/amazon/readingactions/ui/widget/BookGridController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,726:1\n1230#2:727\n1299#2,3:728\n*E\n*S KotlinDebug\n*F\n+ 1 BookGridController.kt\ncom/amazon/readingactions/ui/widget/BookGridController\n*L\n222#1:727\n222#1,3:728\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
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

.field private final bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;

.field private bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private final isOneTapEnabled:Z

.field private final recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/BookGridController;->Companion:Lcom/amazon/readingactions/ui/widget/BookGridController$Companion;

    .line 76
    const-class v0, Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/widget/BookGridController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 8

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/anyactions/ui/widget/BookGridBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookCoverListeners:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EndActionsPlugin.sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    sget v3, Lcom/amazon/kindle/ea/R$dimen;->readingactions_rec_image_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageHeight:I

    .line 67
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_rec_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageWidth:I

    .line 103
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;

    .line 105
    new-instance v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    const-string v1, "def.recommendations"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    const-string v1, "ThemedResourceUtil.getColorModeFromAppTheme()"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageHeight:I

    iget-boolean v6, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;

    const/4 v4, 0x1

    move-object v1, v0

    .line 105
    invoke-direct/range {v1 .. v7}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;-><init>(Ljava/util/List;Lcom/amazon/kindle/krx/ui/ColorMode;ZIZLcom/amazon/readingactions/helpers/KUImageHandler;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    .line 107
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapExpandoEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->isOneTapEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method public static final synthetic access$getBookGridView$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/ui/widget/BookGridView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method public static final synthetic access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    return-object p0
.end method

.method public static final synthetic access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    return-object p0
.end method

.method public static final synthetic access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->isOneTapEnabled:Z

    return p0
.end method

.method public static final synthetic access$isSharingSupported(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/anyactions/ui/widget/BookGridBase;->isSharingSupported()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadDetailPage(Lcom/amazon/readingactions/ui/widget/BookGridController;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->loadDetailPage(I)V

    return-void
.end method

.method public static final synthetic access$loadShareSheet(Lcom/amazon/readingactions/ui/widget/BookGridController;Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->loadShareSheet(Ljava/lang/String;I)V

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

    .line 222
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    const-string v1, "def.recommendations"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 728
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 729
    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 222
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final getTitle()Ljava/lang/String;
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "%{authorList}"

    .line 230
    invoke-static {v1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v2, "EndActionsPlugin.sdk"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string v2, "EndActionsPlugin.sdk.readerManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {v0}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatBookAuthors(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "AuthorNameFormatterUtil.formatBookAuthors(book)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "%{authorList}"

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private final loadDetailPage(I)V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-boolean v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->isOneTapEnabled:Z

    const-string v3, "ClickedGridSeeInStore"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "DidAnything"

    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 250
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 251
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 252
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".%d"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 254
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v4, "AnyActionsBookGridWidget"

    invoke-static {p1, v2, v3, v1, v4}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "BookGridWidget"

    invoke-static {v1, p1, v0}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadShareSheet(Ljava/lang/String;I)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ss_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "END_ACTIONS_BOOK_GRID"

    .line 268
    invoke-static {p1, v0, p2}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBookGridItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "BookGridWidgetShareClicked"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 274
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 276
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "def.metricsTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "MetricsTag"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "refTag"

    .line 278
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RefTag"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EntryPoint"

    .line 279
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "AnyActionsBookGridWidget"

    const-string v1, "Share"

    .line 281
    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v1, "controller"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_bookgrid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const-string/jumbo v1, "selectedCover"

    .line 174
    invoke-virtual {p0, v1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 178
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_book_grid_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_e

    check-cast p2, Landroid/widget/TextView;

    .line 179
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 184
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_bookgrid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_d

    check-cast p2, Lcom/amazon/readingactions/ui/widget/BookGridView;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    .line 189
    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageWidth:I

    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageHeight:I

    invoke-virtual {p2, v2, v3}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setCoverSize(II)V

    .line 190
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_b

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 191
    sget v3, Lcom/amazon/kindle/ea/R$dimen;->readingactions_book_grid_padding_between_books:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 190
    invoke-virtual {p2, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setCoverPadding(I)V

    .line 192
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_a

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-virtual {p2, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setAnimationCoordinator(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    .line 193
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setSelectedCover(I)V

    .line 194
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setDef(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 197
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_7

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_detail_bubble_body:I

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleBodyLayoutId(I)V

    .line 198
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_6

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_group:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleBodyBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_5

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_detail_bubble_needle:I

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleLayoutId(I)V

    .line 200
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_4

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_bubble_needle:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_3

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_bookgrid_selector_offset:I

    invoke-virtual {p2, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setNeedleOffset(I)V

    .line 204
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {p2}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->listenForImageLoad()V

    .line 205
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setAdapter(Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)V

    .line 207
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 209
    new-instance p2, Lcom/amazon/readingactions/ui/widget/BookGridController$createView$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/BookGridController$createView$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p2, "view"

    .line 211
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 205
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 201
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 200
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 199
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 198
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 197
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 194
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 193
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 192
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 190
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 189
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 188
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.amazon.readingactions.ui.widget.BookGridView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initMetricsValues()V
    .locals 11

    .line 144
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedBookGridWidget"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 148
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->isOneTapEnabled:Z

    const-string v3, "ClickedGridSeeInStore"

    invoke-static {v3, v0}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WidgetUIActionMetricsStr\u2026N_STORE, isOneTapEnabled)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 152
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "ExpandedGridCover"

    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 153
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    const-string v4, "def.recommendations"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 156
    sget-object v6, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".%d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.lang.String.format(format, *args)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 157
    sget-object v6, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExpandedGridCover."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v10, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v10, v10, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "rsMetadata"

    .line 161
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v3, "EndActionsPlugin.sdk"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsBookGridWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 164
    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->load()V

    .line 120
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 121
    new-instance v9, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->imageHeight:I

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    .line 122
    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iget-object v8, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridCoverImageHandler;

    move-object v2, v9

    move-object v3, v1

    .line 121
    invoke-direct/range {v2 .. v8}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;ILjava/util/List;Landroid/view/View;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;Lcom/amazon/readingactions/helpers/KUImageHandler;)V

    .line 123
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookCoverListeners:Ljava/util/Map;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const-string/jumbo v4, "rec.asin"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v2

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-virtual {v2, v1, v9}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedCover"

    .line 215
    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->getSelectedCover()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onUiDismiss()V
    .locals 4

    .line 137
    invoke-super {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onUiDismiss()V

    .line 138
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->bookCoverListeners:Ljava/util/Map;

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

    .line 139
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
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->download()V

    .line 113
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
