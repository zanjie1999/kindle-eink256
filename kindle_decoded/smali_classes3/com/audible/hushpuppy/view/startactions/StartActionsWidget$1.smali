.class Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;
.super Ljava/lang/Object;
.source "StartActionsWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v1}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$100(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/controller/ViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-static {}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown View State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v5}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$100(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/controller/ViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 140
    :pswitch_4
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 135
    :pswitch_5
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 132
    :pswitch_6
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    .line 163
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v3, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v3}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$300(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-static {v3}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 173
    invoke-static {}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown color mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v4}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$300(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->start_actions_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->hp_black_mode_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->start_actions_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v1, v0}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 180
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->refresh()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
