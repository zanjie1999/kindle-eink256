.class Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/AnimationCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropFrameOnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/AnimationCoordinator;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$1;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 646
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Layout occurred during animation, delaying next render."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 656
    :cond_1
    new-instance v1, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener$1;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
