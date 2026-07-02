.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->resumeFromHold()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->isDoubletimePaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    .line 868
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->updateCurrentWord()V

    .line 869
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 871
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v2, v2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->resumeDoubletime(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    .line 872
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->enableForwardRewind(Z)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    :cond_1
    return-void
.end method
