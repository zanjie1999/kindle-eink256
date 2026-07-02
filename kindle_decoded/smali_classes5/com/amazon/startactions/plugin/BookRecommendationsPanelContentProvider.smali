.class public Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;
.super Ljava/lang/Object;
.source "BookRecommendationsPanelContentProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;
    }
.end annotation


# static fields
.field private static final BOOK_RECOMMENDATIONS_PANEL_PRIORITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.plugin.BookRecommendationsPanelContentProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTextPanelRow(Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/panels/IPanelRow;
    .locals 3

    .line 124
    invoke-static {p2}, Lcom/amazon/startactions/metrics/SessionManager;->containsSessionMetric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p2}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 126
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedFeaturedRecommendations"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->panelRowTitle:Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;-><init>(Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;->createTextComponent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object p1

    .line 133
    new-instance p2, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    invoke-direct {p2}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->setTextComponent(Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->build()Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "Current book is null; will not add Book Recommendations panel to left nav."

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/util/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 63
    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    const-string v3, "leftNavCitationsFeaturedList"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 64
    instance-of v3, v1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    if-nez v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    .line 74
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/ea/R$dimen;->featuredbooks_image_height:I

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 77
    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "featured rec widget found in sidecar, provide panel to left nav"

    invoke-static {v0, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    .line 83
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->getTextPanelRow(Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 65
    :cond_4
    :goto_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 66
    sget-object p1, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "no featured rec widget found in sidecar, do not provide panel to left nav"

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 86
    :cond_6
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    sget-object v1, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "no sidecar found in memory, parse sidecar in background and refresh left panel if needed"

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_7
    new-instance v1, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;-><init>(Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;Lcom/amazon/kindle/krx/content/IBook;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 109
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    const/16 p1, 0x32

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
