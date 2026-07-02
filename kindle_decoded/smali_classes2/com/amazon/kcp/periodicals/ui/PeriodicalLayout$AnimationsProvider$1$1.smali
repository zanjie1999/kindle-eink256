.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;)V
    .locals 0

    .line 2905
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 2908
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    return-void
.end method
