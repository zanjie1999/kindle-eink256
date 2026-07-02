.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntityListOnItemClickListener"
.end annotation


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private final entityTypeId:I

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;ILcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 392
    iput p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->entityTypeId:I

    .line 393
    iput-object p3, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 398
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 399
    instance-of p2, p1, Lcom/amazon/xray/model/object/Entity;

    if-eqz p2, :cond_0

    .line 400
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToEntity(I)V

    .line 402
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->saveSessionMetric()V

    .line 405
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    .line 406
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "XrayTab_AllOfType"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->entityTypeId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SelectEntity"

    .line 407
    invoke-interface {p2, p3, p4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget p3, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->entityTypeId:I

    invoke-interface {p2, p1, p3}, Lcom/amazon/xray/metrics/MetricsRecorder;->selectEntityFromListOfType(Lcom/amazon/xray/model/object/Entity;I)V

    :cond_0
    return-void
.end method

.method saveSessionMetric()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnItemClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "EntitiesViewed"

    .line 418
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "UITaps"

    .line 420
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
