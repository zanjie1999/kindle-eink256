.class Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;
.super Ljava/lang/Object;
.source "EntityOccurrencesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionRangeOnItemClickListener"
.end annotation


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private final entity:Lcom/amazon/xray/model/object/Entity;

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    .line 341
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 346
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 347
    iput-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 352
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 353
    instance-of p2, p1, Lcom/amazon/xray/model/object/PositionRange;

    if-eqz p2, :cond_0

    .line 354
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    check-cast p1, Lcom/amazon/xray/model/object/PositionRange;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToReaderBookPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 358
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 359
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "XrayTab_AllMentions"

    const-string p3, "GoToBookLocation"

    .line 360
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$PositionRangeOnItemClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {p1, p2}, Lcom/amazon/xray/metrics/MetricsRecorder;->navigateToExcerpt(Lcom/amazon/xray/model/object/Entity;)V

    :cond_0
    return-void
.end method
