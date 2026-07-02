.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$7;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$7;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$7;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pause()V

    return-void
.end method
