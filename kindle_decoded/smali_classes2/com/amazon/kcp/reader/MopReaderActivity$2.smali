.class Lcom/amazon/kcp/reader/MopReaderActivity$2;
.super Ljava/lang/Object;
.source "MopReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/MopReaderActivity;->dismissSpinnerIfReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/MopReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$anim;->spinner_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;

    iget-object v2, p0, Lcom/amazon/kcp/reader/MopReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;-><init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    iget-object v1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
