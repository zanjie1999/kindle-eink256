.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_CurlView()V
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

    .line 2454
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 2

    .line 2458
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 2465
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2469
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 2470
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    goto :goto_1

    .line 2473
    :cond_1
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 2474
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    .line 2477
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;II)V

    .line 2478
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurlView;->hideLeftRightPage()V

    return-void
.end method
