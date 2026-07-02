.class Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;
.super Ljava/lang/Object;
.source "ReaderAudioControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$002(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$002(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->seekTo(I)V

    return-void
.end method
