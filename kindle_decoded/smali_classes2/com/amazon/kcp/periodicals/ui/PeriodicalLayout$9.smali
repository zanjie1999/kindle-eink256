.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$9;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateCloseButtonIfNeeded()V
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

    .line 1747
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$9;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1750
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$9;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeTextView(Z)V

    .line 1751
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandTextView"

    const-string v1, "ExitWithCloseButton"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
