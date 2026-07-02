.class Lcom/amazon/krf/media/InlineVideoPlayer$9;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->internalStop()V
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

    .line 244
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$9;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$9;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->stopPlayback()V

    .line 248
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$9;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$9;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    return-void
.end method
