.class Lcom/audible/hushpuppy/view/player/view/SleepTimerView$3;
.super Ljava/lang/Object;
.source "SleepTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->concealSleepTimerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
