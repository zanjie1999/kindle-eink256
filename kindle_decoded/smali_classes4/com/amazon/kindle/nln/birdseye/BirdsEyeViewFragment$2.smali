.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;
.super Ljava/lang/Object;
.source "BirdsEyeViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->setUpPageFlipButton(Landroid/widget/ImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    iget-boolean v0, p1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->isPFVButtonActive:Z

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->access$000()Ljava/lang/String;

    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->access$100(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-static {p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->access$200(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 196
    :cond_1
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 199
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToPageFlip()V

    return-void
.end method
