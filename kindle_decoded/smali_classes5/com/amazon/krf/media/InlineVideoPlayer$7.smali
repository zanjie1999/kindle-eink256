.class Lcom/amazon/krf/media/InlineVideoPlayer$7;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->isPlaying()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/InlineVideoPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$7;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$7;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/amazon/krf/media/InlineVideoPlayer$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
