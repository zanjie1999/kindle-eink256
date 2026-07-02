.class Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;
.super Ljava/lang/Object;
.source "CountAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->create321Animation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$002(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$002(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;I)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
