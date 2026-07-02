.class public Lcom/amazon/startactions/ui/widget/BookGridWidget;
.super Lcom/amazon/anyactions/ui/widget/BookGridBase;
.source "BookGridWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;,
        Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;,
        Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;
    }
.end annotation


# static fields
.field private static final COVER_RELOAD_DELAY_MS:J = 0x3e8L

.field private static final SOCIAL_SHARING_ENTRY_POINT_START_ACTIONS_BOOK_GRID:Ljava/lang/String; = "START_ACTIONS_BOOK_GRID"

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.BookGridWidget"


# instance fields
.field private bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private final kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 4

    .line 109
    invoke-direct {p0, p1}, Lcom/amazon/anyactions/ui/widget/BookGridBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    .line 111
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_rec_image_height:I

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageHeight:I

    .line 113
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_rec_image_width:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageWidth:I

    .line 116
    iget-boolean v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

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

    .line 118
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageHeight:I

    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageHeight:I

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    .line 123
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/startactions/ui/widget/BookGridWidget;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->loadDetailPage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/startactions/ui/widget/BookGridWidget;Ljava/lang/String;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->loadShareSheet(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/amazon/anyactions/ui/widget/BookGridBase;->isSharingSupported()Z

    move-result p0

    return p0
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

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 152
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private loadDetailPage(I)V
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 239
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 242
    invoke-interface {v2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    const-string v2, "AnyActionsBookGridWidget"

    .line 239
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    return-void
.end method

.method private loadShareSheet(Ljava/lang/String;I)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ss_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p2

    .line 256
    invoke-virtual {p2}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "START_ACTIONS_BOOK_GRID"

    .line 258
    invoke-static {p1, v0, p2}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBookGridItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v1, "BookGridWidgetShareClicked"

    .line 264
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 265
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 267
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RefTag"

    .line 269
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EntryPoint"

    .line 270
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "AnyActionsBookGridWidget"

    const-string v1, "Share"

    .line 272
    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/startactions/ui/widget/BookGridWidget;
    .locals 1

    .line 102
    new-instance v0, Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 159
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_bookgrid:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 161
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_0
    new-instance p2, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V

    .line 171
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_bookgrid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    .line 172
    iget v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageWidth:I

    iget v2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setCoverSize(II)V

    .line 173
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_shoveler_padding_between_books:I

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setCoverPadding(I)V

    .line 175
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setAnimationCoordinator(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    .line 176
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setSelectedCover(I)V

    .line 177
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setDef(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_detail_bubble_body:I

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setBubbleBodyLayoutId(I)V

    .line 181
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_bg_group:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setBubbleBodyBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_detail_bubble_needle:I

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setBubbleNeedleLayoutId(I)V

    .line 183
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_bubble_needle:I

    .line 184
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setBubbleNeedleBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_bookgrid_needle_offset:I

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setNeedleOffset(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/startactions/ui/widget/BookGridWidget$1;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->listen(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 194
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {v0, p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setAdapter(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;)V

    .line 196
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 198
    new-instance p2, Lcom/amazon/startactions/ui/widget/BookGridWidget$2;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$2;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ExpandedGridCover"

    .line 212
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HasRecommendations"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v1, "DisplayedBookGridWidget"

    .line 219
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 220
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 221
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsBookGridWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-static {v1, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 10

    .line 135
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 138
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

    move-object v3, v1

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 139
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v1

    iget-object v8, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    new-instance v9, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    iget v4, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->imageHeight:I

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

    move-result-object v7

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;-><init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;ILcom/amazon/ea/ui/widget/bookgrid/BookGridView;Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/List;)V

    invoke-virtual {v1, v8, v9}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

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

.method public prepareData()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 130
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->getAsins()Ljava/util/List;

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
