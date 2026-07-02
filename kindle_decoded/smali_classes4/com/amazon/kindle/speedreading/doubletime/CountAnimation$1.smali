.class Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CountAnimation.java"


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

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$010(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)I

    .line 67
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$000(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$100(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$000(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->access$100(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
