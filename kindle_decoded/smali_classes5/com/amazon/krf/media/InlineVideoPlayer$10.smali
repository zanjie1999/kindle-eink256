.class Lcom/amazon/krf/media/InlineVideoPlayer$10;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->internalSeekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

.field final synthetic val$msec:I


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/InlineVideoPlayer;I)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$10;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    iput p2, p0, Lcom/amazon/krf/media/InlineVideoPlayer$10;->val$msec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$10;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$10;->val$msec:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method
