.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupAnimation(FFII)Landroid/animation/AnimatorSet;
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

    .line 597
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 600
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 601
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$500(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 602
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$600(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 603
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$700(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
