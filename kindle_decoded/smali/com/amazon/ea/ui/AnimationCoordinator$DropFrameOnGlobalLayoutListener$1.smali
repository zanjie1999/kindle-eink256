.class Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener$1;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
