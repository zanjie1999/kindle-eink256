.class Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;
.super Ljava/lang/Object;
.source "ClutchTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->startLooperAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$100(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$200(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->isDoubletimePaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$200(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$200(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->resumeDoubletime(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setPlayPauseMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;->this$0:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableForwardRewind(Z)V

    :cond_0
    return-void
.end method
