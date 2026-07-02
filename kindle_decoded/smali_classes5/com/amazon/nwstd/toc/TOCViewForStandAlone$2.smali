.class Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;
.super Ljava/lang/Object;
.source "TOCViewForStandAlone.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->prepareSectionListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x1

    if-ge p2, p3, :cond_0

    .line 147
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/ISectionTOCItem;->getArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p5

    add-int/2addr p4, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->setSelection(I)V

    .line 151
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 152
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$2;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    const-string p3, "JumpToSection"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p5
.end method
