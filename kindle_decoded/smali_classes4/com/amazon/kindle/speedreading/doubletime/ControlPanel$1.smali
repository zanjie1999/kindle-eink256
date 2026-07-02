.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;
.super Landroid/os/Handler;
.source "ControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/os/Looper;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    const-string v1, "chapter_start_position"

    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v2, "chapter_end_position"

    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v3, "next_chapter_start_position"

    .line 151
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const-string v4, "next_chapter_end_position"

    .line 154
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pause()V

    goto :goto_0

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 171
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->messageProcessed()V

    return-void
.end method
