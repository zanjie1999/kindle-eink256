.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInImageViewFromTOCMetrics()V
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

    .line 2832
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postFirstDraw(Landroid/view/View;)Z
    .locals 2

    .line 2837
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2838
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 2839
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 2838
    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2840
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInLandscapeOrientation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2841
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 2842
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 2841
    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
