.class Lcom/amazon/kindle/rendering/KRIFView$1$1;
.super Ljava/lang/Object;
.source "KRIFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFView$1;->onOrientationLockRequested(Lcom/amazon/krf/platform/OrientationLockRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

.field final synthetic val$orientationRequest:Lcom/amazon/krf/platform/OrientationLockRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFView$1;Lcom/amazon/krf/platform/OrientationLockRequest;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->val$orientationRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->val$orientationRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    iput-object v1, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    .line 240
    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/OrientationLockRequest;->getOrientation()Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-static {v0}, Lcom/amazon/kindle/util/KRIFUtils;->getAndroidOrientationFromKRFOrientation(Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->setContentOrientation(I)V

    .line 246
    sget-object v1, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->DEFAULT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFView;->access$000(Lcom/amazon/kindle/rendering/KRIFView;)V

    .line 250
    :cond_0
    sget-object v1, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->DEFAULT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    .line 251
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    .line 253
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    sget-object v1, Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;

    if-ne v0, v1, :cond_4

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/OrientationLockRequest;->onComplete()V

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->this$1:Lcom/amazon/kindle/rendering/KRIFView$1;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1$1;->val$orientationRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    const-string v1, "Request already existed"

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/OrientationLockRequest;->onFailure(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
