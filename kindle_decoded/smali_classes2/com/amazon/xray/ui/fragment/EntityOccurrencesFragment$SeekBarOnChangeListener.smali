.class Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;
.super Ljava/lang/Object;
.source "EntityOccurrencesFragment.java"

# interfaces
.implements Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V
    .locals 0

    .line 311
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->getListPositionForBookPosition(I)I

    move-result p2

    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$SeekBarOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    .line 312
    invoke-static {p3}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getGroupViewHeight()I

    move-result p3

    .line 311
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 315
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 316
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "XrayTab_AllMentions"

    const-string p3, "PressedTimeline"

    .line 317
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V
    .locals 0

    return-void
.end method
