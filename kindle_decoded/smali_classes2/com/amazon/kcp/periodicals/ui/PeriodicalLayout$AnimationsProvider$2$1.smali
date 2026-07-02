.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;)V
    .locals 0

    .line 2972
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2974
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V

    return-void
.end method
