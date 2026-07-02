.class public abstract Lcom/amazon/xray/ui/fragment/XrayFragment;
.super Landroidx/fragment/app/Fragment;
.source "XrayFragment.java"


# instance fields
.field protected activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field protected metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 19
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 29
    check-cast p1, Lcom/amazon/xray/ui/activity/XrayActivity;

    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    return-void
.end method
