.class Lcom/amazon/krf/media/InlineVideoPlayer$1;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 57
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$1;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$1;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$1;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$1;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    return-void
.end method
