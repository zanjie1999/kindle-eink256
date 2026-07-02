.class public final Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;
.super Ljava/lang/Object;
.source "HushpuppyReaderPluginBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HushpuppyStateChangeEventHandler"
.end annotation


# instance fields
.field private hasBeenEnabled:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;


# direct methods
.method protected constructor <init>(Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->this$0:Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->hasBeenEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;)V
    .locals 3

    .line 132
    invoke-static {}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "HP-AppStart: Received HushpuppyStateChangeEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->this$0:Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$1;->$SwitchMap$com$audible$hushpuppy$common$event$enable$HushpuppyStateChangeEvent$State:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 158
    invoke-static {}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown HushpuppyStateChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->hasBeenEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    invoke-static {}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v1, "Disabling plugin"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginDisabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->this$0:Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->disable()V

    .line 150
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginDisabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 151
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->hasBeenEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Not disabling plugin, it was never enabled"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->hasBeenEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 137
    invoke-static {}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v1, "Enabling plugin %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginEnabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->this$0:Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->enable()V

    .line 140
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginEnabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p1, v1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    .line 141
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$HushpuppyStateChangeEventHandler;->hasBeenEnabled:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    return-void
.end method
