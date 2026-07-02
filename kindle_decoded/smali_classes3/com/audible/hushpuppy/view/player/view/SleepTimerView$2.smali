.class Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;
.super Ljava/lang/Object;
.source "SleepTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->revealSleepTimerView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

.field final synthetic val$accessibilityText:Ljava/lang/String;

.field final synthetic val$displayText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->val$displayText:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->val$accessibilityText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 108
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 109
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->val$displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;->val$accessibilityText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
