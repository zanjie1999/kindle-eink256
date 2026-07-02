.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipTutorialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->animateViewsIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 559
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$300(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$400(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 553
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$300(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->showTutorialViews()V

    return-void
.end method
