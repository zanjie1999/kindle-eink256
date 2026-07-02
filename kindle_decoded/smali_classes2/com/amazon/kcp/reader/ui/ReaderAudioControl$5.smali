.class Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;
.super Ljava/lang/Object;
.source "ReaderAudioControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->attachToAudioPlayer(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$000(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->getCurrentPosition()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
