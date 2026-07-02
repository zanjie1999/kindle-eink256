.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$11;
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

    .line 611
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$11;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$11;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$800(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
