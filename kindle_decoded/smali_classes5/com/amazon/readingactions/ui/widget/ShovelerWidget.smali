.class public Lcom/amazon/readingactions/ui/widget/ShovelerWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "ShovelerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/ShovelerWidget$CoverOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TITLE_AUTHORS_KEY:Ljava/lang/String; = "%{authorList}"


# instance fields
.field private final imageHeight:I

.field private final imageWidth:I

.field private final recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 65
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_rec_image_height:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->imageHeight:I

    .line 67
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_rec_image_width:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->imageWidth:I

    .line 69
    iget-object p1, p1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    iget v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->imageHeight:I

    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Landroid/content/res/Resources;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->imageWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->imageHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Ljava/util/HashMap;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method private getBseTitle()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->bseTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "%{authorList}"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatBookAuthors(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;)Lcom/amazon/readingactions/ui/widget/ShovelerWidget;
    .locals 1

    .line 56
    new-instance v0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 84
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_shoveler:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->bseTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->getBseTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 94
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_shoveler_padding_between_books:I

    .line 99
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 100
    new-instance v0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v2}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;-><init>(Landroid/content/res/Resources;)V

    .line 101
    sget v2, Lcom/amazon/kindle/ea/R$id;->cover_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 103
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 104
    new-array v4, v3, [Landroid/widget/ImageView;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 106
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v6, v6, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 108
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v8, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$CoverOnClickListener;

    invoke-direct {v8, p0, v5}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$CoverOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v9, Lcom/amazon/kindle/ea/R$string;->endactions_title_by_author:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    aput-object v11, v10, v1

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 113
    invoke-static {v6}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v10, v11

    .line 112
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;

    invoke-direct {v1, p0, v4, p2}, Lcom/amazon/readingactions/ui/widget/ShovelerWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/ShovelerWidget;[Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ClickedRecommendation"

    .line 165
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "HasRecommendations"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedShoveler"

    invoke-static {v3, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 174
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 175
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "RecommendationCount"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsShovelerWidget"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DisplayedShovelerWidget"

    .line 181
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ShovelerWidget;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    return-void
.end method
