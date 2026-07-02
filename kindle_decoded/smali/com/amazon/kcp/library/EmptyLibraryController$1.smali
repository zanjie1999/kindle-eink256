.class Lcom/amazon/kcp/library/EmptyLibraryController$1;
.super Ljava/lang/Object;
.source "EmptyLibraryController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/EmptyLibraryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EmptyLibraryController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EmptyLibraryController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$1;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "LibraryActivity"

    const-string v1, "StoreOpenedFromEmptyLibrary"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/library/EmptyLibraryController$1;->this$0:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-static {p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->access$000(Lcom/amazon/kcp/library/EmptyLibraryController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
