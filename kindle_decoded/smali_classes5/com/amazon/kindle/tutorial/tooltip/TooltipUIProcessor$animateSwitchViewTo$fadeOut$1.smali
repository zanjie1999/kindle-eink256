.class public final Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipUIProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->animateSwitchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

.field final synthetic this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;",
            "I)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->$layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    iput p3, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->$layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    iget v1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->$index:I

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$switchViewTo(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    .line 63
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;->$layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->animateViewsIn()V

    return-void
.end method
