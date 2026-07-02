.class Lcom/amazon/krf/media/KRFVideoView$2;
.super Ljava/lang/Object;
.source "KRFVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 64
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView$2;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$2;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$300(Lcom/amazon/krf/media/KRFVideoView;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$2;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/KRFVideoView;->access$002(Lcom/amazon/krf/media/KRFVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 70
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$2;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$400(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$2;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$400(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
