.class Lcom/amazon/krf/media/VideoPlugin$12;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v1}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v1}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1600(Lcom/amazon/krf/media/VideoPlugin;)V

    .line 576
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1200(Lcom/amazon/krf/media/VideoPlugin;)V

    .line 577
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$502(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/KRFVideoView;)Lcom/amazon/krf/media/KRFVideoView;

    .line 578
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$402(Lcom/amazon/krf/media/VideoPlugin;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 579
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$1002(Lcom/amazon/krf/media/VideoPlugin;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 580
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$12;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$1302(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/platform/KRFView;

    return-void
.end method
