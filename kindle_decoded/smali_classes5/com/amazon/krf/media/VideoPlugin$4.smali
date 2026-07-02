.class Lcom/amazon/krf/media/VideoPlugin$4;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iput-boolean p2, p0, Lcom/amazon/krf/media/VideoPlugin$4;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iget-boolean v1, p0, Lcom/amazon/krf/media/VideoPlugin$4;->val$isVisible:Z

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$902(Lcom/amazon/krf/media/VideoPlugin;Z)Z

    .line 223
    iget-boolean v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->val$isVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->stop()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/krf/media/VideoPlugin$4;->val$isVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->val$isVisible:Z

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 232
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$4;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    :cond_3
    return-void
.end method
