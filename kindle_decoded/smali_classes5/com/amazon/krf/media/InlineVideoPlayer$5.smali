.class Lcom/amazon/krf/media/InlineVideoPlayer$5;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->play()V
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

    .line 139
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$5;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$5;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$402(Lcom/amazon/krf/media/InlineVideoPlayer;Z)Z

    .line 143
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$5;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$5;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->start()V

    .line 145
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$5;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    return-void
.end method
