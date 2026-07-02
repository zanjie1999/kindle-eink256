.class final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getReaderLayout$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getReaderLayout$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 444
    :cond_1
    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->RUBBERBAND:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v3, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 443
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->showThumb()V

    goto :goto_1

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$cancelHideThumbCallbacks(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    :goto_1
    return-void
.end method
