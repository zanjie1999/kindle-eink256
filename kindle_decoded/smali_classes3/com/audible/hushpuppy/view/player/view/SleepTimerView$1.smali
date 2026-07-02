.class Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;
.super Ljava/lang/Object;
.source "SleepTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

.field final synthetic val$event:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->val$event:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->val$event:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;->val$event:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;->getAccessibilityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
