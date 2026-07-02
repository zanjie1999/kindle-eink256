.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$300(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;II)V

    .line 107
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    const/4 p1, 0x1

    return p1
.end method
