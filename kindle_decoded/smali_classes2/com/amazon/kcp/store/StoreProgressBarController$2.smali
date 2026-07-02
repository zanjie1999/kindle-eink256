.class Lcom/amazon/kcp/store/StoreProgressBarController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoreProgressBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreProgressBarController;->onProgressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreProgressBarController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreProgressBarController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreProgressBarController$2;->this$0:Lcom/amazon/kcp/store/StoreProgressBarController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreProgressBarController$2;->this$0:Lcom/amazon/kcp/store/StoreProgressBarController;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreProgressBarController;->access$000(Lcom/amazon/kcp/store/StoreProgressBarController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
