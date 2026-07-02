.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInit()V
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

    .line 1917
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1921
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1924
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 1927
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 1930
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->activateImageViewPageCurl()V

    .line 1933
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v2, v3, :cond_0

    .line 1934
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 1937
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    long-to-int v0, v3

    invoke-static {v2, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1602(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;I)I

    return-void
.end method
