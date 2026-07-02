.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createOpenTextViewAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;)V
    .locals 0

    .line 2993
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2997
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->enablePrerendering()V

    .line 2998
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 3001
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 3006
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonPosition()V

    .line 3008
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    .line 3011
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->setupCustomButtons()V

    .line 3014
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
