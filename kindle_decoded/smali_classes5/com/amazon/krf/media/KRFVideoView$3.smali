.class Lcom/amazon/krf/media/KRFVideoView$3;
.super Ljava/lang/Object;
.source "KRFVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/KRFVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/KRFVideoView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/KRFVideoView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView$3;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KRFVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$3;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$300(Lcom/amazon/krf/media/KRFVideoView;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$3;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/KRFVideoView;->access$002(Lcom/amazon/krf/media/KRFVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 85
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$3;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$500(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$3;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$500(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
