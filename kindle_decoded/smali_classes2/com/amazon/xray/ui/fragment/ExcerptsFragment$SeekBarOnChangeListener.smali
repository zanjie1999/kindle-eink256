.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V
    .locals 0

    .line 667
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1, p3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedlePosition(I)V

    .line 668
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$800(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V

    .line 671
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 672
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "Xray"

    const-string p3, "PressedTimeline"

    .line 673
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V
    .locals 3

    .line 680
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xaf

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 681
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->contextFooter:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 684
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string v0, "XrayReadingSession"

    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "PressedTimeline"

    .line 685
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v0, "UITaps"

    .line 686
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V
    .locals 2

    .line 692
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$700(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->getDisplayableExcerpt(I)Lcom/amazon/xray/model/object/DisplayableExcerpt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 693
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/CardCarousel;->setFocusedCardIndex(I)V

    .line 694
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 695
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->contextFooter:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 697
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$700(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setVisibleRange(II)V

    .line 698
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1002(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)I

    .line 699
    invoke-static {}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1200()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1100(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
