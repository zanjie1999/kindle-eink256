.class Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;
.super Ljava/lang/Object;
.source "DescriptionDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnNavigateToSourceRunnable"
.end annotation


# instance fields
.field private final entity:Lcom/amazon/xray/model/object/Entity;

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;-><init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 114
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {v0, v1}, Lcom/amazon/xray/metrics/MetricsRecorder;->openDescriptionUrlFromEntityDetail(Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method
