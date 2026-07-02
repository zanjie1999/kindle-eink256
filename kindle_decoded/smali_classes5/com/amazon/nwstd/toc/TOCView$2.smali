.class Lcom/amazon/nwstd/toc/TOCView$2;
.super Ljava/lang/Object;
.source "TOCView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCView;->prepareTitleView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCView;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCView;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView$2;->this$0:Lcom/amazon/nwstd/toc/TOCView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 334
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCView$2;->this$0:Lcom/amazon/nwstd/toc/TOCView;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;->onOpenCoverPage()V

    .line 337
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView$2;->this$0:Lcom/amazon/nwstd/toc/TOCView;

    iget-object v0, v0, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    const-string v1, "JumpToCover"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
