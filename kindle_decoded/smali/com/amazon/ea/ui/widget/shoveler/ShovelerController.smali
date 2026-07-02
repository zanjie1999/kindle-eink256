.class public Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "ShovelerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;",
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
.method public constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 69
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->imageHeight:I

    .line 71
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_width:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->imageWidth:I

    .line 73
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    iget v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->imageHeight:I

    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Landroid/content/res/Resources;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->imageWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->imageHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "%{authorList}"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatBookAuthors(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;)Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 108
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_shoveler:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 112
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_0
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->endactions_widget_shoveler_padding_between_books:I

    .line 121
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 122
    new-instance v0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v2}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;-><init>(Landroid/content/res/Resources;)V

    .line 123
    sget v2, Lcom/amazon/kindle/ea/R$id;->cover_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 125
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 126
    new-array v4, v3, [Landroid/widget/ImageView;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 128
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 130
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v8, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;

    invoke-direct {v8, p0, v5}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$CoverOnClickListener;-><init>(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v9, Lcom/amazon/kindle/ea/R$string;->endactions_title_by_author:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    aput-object v11, v10, v1

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 135
    invoke-static {v6}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v10, v11

    .line 134
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$1;

    invoke-direct {v1, p0, v4, p2}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$1;-><init>(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;[Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 168
    sget p2, Lcom/amazon/kindle/ea/R$id;->scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    .line 169
    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$2;

    invoke-direct {v1, p0, p2}, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController$2;-><init>(Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 8

    .line 88
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedShovelerWidget"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v3, 0x0

    const-string v4, "ClickedRecommendation"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 93
    sget-object v4, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClickedRecommendation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".%d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "HasRecommendations"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 97
    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "MetricsTag"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsShovelerWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/shoveler/ShovelerController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    return-void
.end method
