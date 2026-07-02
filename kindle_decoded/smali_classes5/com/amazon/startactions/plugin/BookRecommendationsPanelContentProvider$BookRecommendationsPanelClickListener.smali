.class Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;
.super Ljava/lang/Object;
.source "BookRecommendationsPanelContentProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookRecommendationsPanelClickListener"
.end annotation


# instance fields
.field private final bookAsin:Ljava/lang/String;

.field private final metricsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;->metricsTag:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;->bookAsin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;->bookAsin:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$BookRecommendationsPanelClickListener;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedFeaturedRecommendations"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "DidAnything"

    .line 153
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 156
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    .line 160
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "LeftNav"

    const-string v3, "MentionedInThisBook"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
