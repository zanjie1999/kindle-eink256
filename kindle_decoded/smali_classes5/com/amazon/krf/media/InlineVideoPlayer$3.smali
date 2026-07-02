.class Lcom/amazon/krf/media/InlineVideoPlayer$3;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;
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

    .line 82
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$202(Lcom/amazon/krf/media/InlineVideoPlayer;I)I

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$300(Lcom/amazon/krf/media/InlineVideoPlayer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$400(Lcom/amazon/krf/media/InlineVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$402(Lcom/amazon/krf/media/InlineVideoPlayer;Z)Z

    .line 93
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-virtual {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->pause()V

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$3;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    return-void
.end method
