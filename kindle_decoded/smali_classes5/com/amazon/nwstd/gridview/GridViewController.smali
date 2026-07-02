.class public Lcom/amazon/nwstd/gridview/GridViewController;
.super Ljava/lang/Object;
.source "GridViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;
    }
.end annotation


# instance fields
.field private mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/nwstd/gridview/GridViewController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method


# virtual methods
.method public openGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->PINCHIN:Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/gridview/GridViewController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openGridView(Z)V

    .line 44
    iget-object v0, p0, Lcom/amazon/nwstd/gridview/GridViewController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setGridViewOverlaysVisible()V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandGridView"

    const-string v2, "OpenGridView"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
