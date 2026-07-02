.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateGridViewIfNeeded()V
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

    .line 784
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 787
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getClickedThumbnailIndex(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 789
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p2, p2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-interface {p2, p1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->highlight(I)V

    .line 790
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    new-instance p3, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {p3, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    .line 791
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "NewsstandGridView"

    const-string p3, "JumpToPage"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
