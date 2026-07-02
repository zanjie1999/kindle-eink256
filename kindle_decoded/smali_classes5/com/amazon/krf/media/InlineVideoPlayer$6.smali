.class Lcom/amazon/krf/media/InlineVideoPlayer$6;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/InlineVideoPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$6;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$6;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$6;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->pause()V

    .line 157
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$6;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$6;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$402(Lcom/amazon/krf/media/InlineVideoPlayer;Z)Z

    :goto_0
    return-void
.end method
