.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInTextViewFromTOCMetrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 2859
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 2865
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2866
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    .line 2867
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 2866
    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2868
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    goto :goto_0

    .line 2869
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2870
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    .line 2871
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 2870
    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2872
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    :cond_1
    :goto_0
    return-void
.end method
