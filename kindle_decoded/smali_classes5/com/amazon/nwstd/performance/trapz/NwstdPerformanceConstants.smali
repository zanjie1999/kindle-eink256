.class public Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;
.super Lcom/amazon/kindle/performance/KindlePerformanceConstants;
.source "NwstdPerformanceConstants.java"


# static fields
.field public static final NWSTD_OPEN:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final OPEN_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final OPEN_SIDE_PANEL_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final OPEN_THUMBNAIL_SLIDER:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final PERIODICAL_LAYOUT_REFRESH_ACTION_BAR:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final ROTATE_REPLICA_VIEW_TO_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final ROTATE_REPLICA_VIEW_TO_LANDSCAPE_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final ROTATE_REPLICA_VIEW_TO_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final ROTATE_REPLICA_VIEW_TO_PORTRAIT_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final TAP_TO_TEXT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final TAP_TO_TEXT_INIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

.field public static final TOC_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "NwstdOpen"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->NWSTD_OPEN:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 15
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "PeriodicalActivityOnCreate"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 20
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "TocActivityOnCreate"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TOC_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 25
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenListOfArticles"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 30
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenSidePanelListOfArticles"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_SIDE_PANEL_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 35
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenArticleFromListOfArticlesPortrait"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 40
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenArticleFromListOfArticlesLandscape"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 45
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenThumbnailSlider"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_THUMBNAIL_SLIDER:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 51
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "RotateReplicaViewToPortraitUX"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_PORTRAIT_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 57
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "RotateReplicaViewToLandscapeUX"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_LANDSCAPE_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 62
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "RotateReplicaViewToPortrait"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 67
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "RotateReplicaViewToLandscape"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 72
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "TapToTextInit"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT_INIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 77
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "TapToText"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 82
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJOpenArticleBrowser"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenArticleFromArticleBrowserPortrait"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "OpenArticleFromArticleBrowserLandscape"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJArticleBrowserInflate"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJAudioStart"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJVideoStart"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJAudioStartPercentageCompletion"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJVideoStartPercentageCompletion"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJSlideshowChangeSlide"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJSlideshowChangeSlideAnimation"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "YJSlideshowFlipFirstSlide"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    const-string v1, "PeriodicalLayoutRefreshActionBar"

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_LAYOUT_REFRESH_ACTION_BAR:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;-><init>(Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->metricName:Ljava/lang/String;

    return-void
.end method
