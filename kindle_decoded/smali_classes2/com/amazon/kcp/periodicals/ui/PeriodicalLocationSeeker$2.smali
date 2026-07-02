.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;
.super Ljava/lang/Object;
.source "PeriodicalLocationSeeker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setNavigatorDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;->cancelHideOverlaysAfterDelay()V

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;->hideViewOptions()V

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->navigateToPreviousChapter()V

    .line 174
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandTextView"

    const-string v1, "PreviousArticle"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
