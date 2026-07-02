.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createOpenGridViewAnimation()Landroid/view/animation/Animation;
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

    .line 2887
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2905
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/utils/RunnableHandler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$1;)V

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

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
