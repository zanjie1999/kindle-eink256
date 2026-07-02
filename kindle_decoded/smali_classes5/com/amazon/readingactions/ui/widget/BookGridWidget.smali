.class public Lcom/amazon/readingactions/ui/widget/BookGridWidget;
.super Lcom/amazon/readingactions/ui/widget/BookGridBase;
.source "BookGridWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;,
        Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;,
        Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;
    }
.end annotation


# static fields
.field private static final COVER_RELOAD_DELAY_MS:J = 0x3e8L

.field private static final SOCIAL_SHARING_ENTRY_POINT_START_ACTIONS_BOOK_GRID:Ljava/lang/String; = "START_ACTIONS_BOOK_GRID"

.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.widget.BookGridWidget"

.field private static final TITLE_AUTHORS_KEY:Ljava/lang/String; = "%{authorList}"


# instance fields
.field private bookCoverListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/listeners/KUInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;

.field private bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 9

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridBase;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookCoverListeners:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_rec_image_height:I

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageHeight:I

    .line 104
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_rec_image_width:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageWidth:I

    .line 107
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;Lcom/amazon/readingactions/ui/widget/BookGridWidget$1;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;

    .line 109
    new-instance v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iget-object v3, p1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    .line 110
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v4

    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageHeight:I

    iget-boolean v7, p1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    iget-object v8, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;-><init>(Ljava/util/List;Lcom/amazon/kindle/krx/ui/ColorMode;ZIZLcom/amazon/readingactions/helpers/KUImageHandler;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/ui/widget/BookGridView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/ui/widget/BookGridWidget;Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->loadShareSheet(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/readingactions/ui/widget/BookGridWidget;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->loadDetailPage(I)V

    return-void
.end method

.method private getAsins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 156
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getBseTitle()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "%{authorList}"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatBookAuthors(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private loadDetailPage(I)V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 267
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 270
    invoke-interface {v2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v5, v5, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    const-string v2, "AnyActionsBookGridWidget"

    .line 267
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    return-void
.end method

.method private loadShareSheet(Ljava/lang/String;I)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ss_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p2

    .line 284
    invoke-virtual {p2}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "START_ACTIONS_BOOK_GRID"

    .line 286
    invoke-static {p1, v0, p2}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBookGridItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v1, "BookGridWidgetShareClicked"

    .line 292
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 293
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 295
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RefTag"

    .line 297
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EntryPoint"

    .line 298
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "AnyActionsBookGridWidget"

    const-string v1, "Share"

    .line 300
    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/readingactions/ui/widget/BookGridWidget;
    .locals 1

    .line 93
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 163
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_bookgrid:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 165
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_book_grid_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->bseTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getBseTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 173
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_0
    new-instance p2, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V

    .line 178
    sget v0, Lcom/amazon/kindle/ea/R$id;->readingactions_bookgrid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/readingactions/ui/widget/BookGridView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    .line 179
    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageWidth:I

    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setCoverSize(II)V

    .line 180
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->readingactions_book_grid_padding_between_books:I

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setCoverPadding(I)V

    .line 182
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setAnimationCoordinator(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setSelectedCover(I)V

    .line 184
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setDef(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_detail_bubble_body:I

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleBodyLayoutId(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_group:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleBodyBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_detail_bubble_needle:I

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleLayoutId(I)V

    .line 190
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_bubble_needle:I

    .line 191
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_bookgrid_selector_offset:I

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setNeedleOffset(I)V

    .line 195
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->listenForImageLoad()V

    .line 196
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0, p2, v1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setAdapter(Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)V

    .line 198
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 200
    new-instance p2, Lcom/amazon/readingactions/ui/widget/BookGridWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public initMetricsValues()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ExpandedGridCover"

    .line 228
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HasRecommendations"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v1, "DisplayedBookGridWidget"

    .line 235
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsBookGridWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    invoke-static {v1, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 10

    .line 122
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->load()V

    .line 125
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 126
    new-instance v9, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->imageHeight:I

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iget-object v8, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridCoverImageHandler:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;ILjava/util/List;Landroid/view/View;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;Lcom/amazon/readingactions/helpers/KUImageHandler;)V

    .line 128
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookCoverListeners:Ljava/util/Map;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v2

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-virtual {v2, v1, v9}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onUiDismiss()V
    .locals 4

    .line 143
    invoke-super {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->onUiDismiss()V

    .line 144
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookCoverListeners:Ljava/util/Map;

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

    .line 145
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v2

    .line 146
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

    .line 115
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->download()V

    .line 117
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedCover(I)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setSelectedCover(I)V

    return-void
.end method
