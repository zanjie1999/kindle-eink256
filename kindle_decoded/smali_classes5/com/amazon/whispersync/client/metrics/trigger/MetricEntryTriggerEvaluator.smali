.class public Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;
.super Ljava/lang/Object;
.source "MetricEntryTriggerEvaluator.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator<",
        "Lcom/amazon/whispersync/client/metrics/MetricEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final TRIGGER_ACTION_METRIC_NAME:Ljava/lang/String; = "TriggerActionCount"

.field private static final TRIGGER_EVALUATOR_METRIC_NAME:Ljava/lang/String; = "TriggerEvaluator"

.field private static final TRIGGER_REASON_METRIC_NAME:Ljava/lang/String; = "TriggerReason"

.field private static final TRIGGER_RULE_ID_DELIMITER:Ljava/lang/String; = "."


# instance fields
.field private final mDefaultTriggerAction:Lcom/amazon/whispersync/client/metrics/trigger/TriggerAction;

.field private final mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

.field private final mTriggerExpressionCodec:Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;

.field private final mTriggerRuleDataSource:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;

.field private final mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;Lcom/amazon/whispersync/client/metrics/trigger/TriggerAction;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 91
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerExpressionCodec:Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;

    .line 92
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleDataSource:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;

    .line 93
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    .line 94
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mDefaultTriggerAction:Lcom/amazon/whispersync/client/metrics/trigger/TriggerAction;

    .line 95
    iput-object p5, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "periodicMetricReporter must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "defaultTriggerAction must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "triggerRuleId must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "triggerRuleDataSource must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "triggerExpressionCodec must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addCommonPrefixToTriggerRuleId(Lcom/amazon/whispersync/client/metrics/MetricEntry;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)V
    .locals 2

    .line 196
    invoke-interface {p2}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->reset()V

    .line 199
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->getProgram()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    move-result-object v0

    const-string v1, "."

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    .line 203
    invoke-interface {p2}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->markCommonPrefix()V

    return-void
.end method

.method private addDataPointSpecificDataToTriggerRuleId(Lcom/amazon/whispersync/client/metrics/DataPoint;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)V
    .locals 2

    .line 210
    invoke-interface {p2}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->resetToCommonPrefix()V

    const-string v0, "."

    .line 214
    invoke-interface {p2, v0}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;->append(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    return-void
.end method

.method private isAcceptedDataPointType(Lcom/amazon/whispersync/client/metrics/DataPointType;)Z
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/DataPointType;->getCounterType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/DataPointType;->getTimerType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private retrieveTriggerExpression(Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleDataSource:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;->getTriggerRuleDataForTriggerRuleId(Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerExpressionCodec:Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;->deserializeTriggerExpression(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized evaluate(Lcom/amazon/whispersync/client/metrics/MetricEntry;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    .line 109
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "TriggerEvaluator"

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->addCommonPrefixToTriggerRuleId(Lcom/amazon/whispersync/client/metrics/MetricEntry;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleDataSource:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleDataSource;->triggerRulesExistForTriggerRuleIdPrefix(Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 182
    :try_start_2
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "TriggerEvaluator"

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    :try_start_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/DataPoint;

    .line 133
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->isAcceptedDataPointType(Lcom/amazon/whispersync/client/metrics/DataPointType;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 139
    :cond_3
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    invoke-direct {p0, v3, v4}, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->addDataPointSpecificDataToTriggerRuleId(Lcom/amazon/whispersync/client/metrics/DataPoint;Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)V

    .line 142
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    invoke-direct {p0, v4}, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->retrieveTriggerExpression(Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 153
    invoke-interface {v4, v5, v6}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;->evaluate(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mTriggerRuleId:Lcom/amazon/whispersync/client/metrics/trigger/TriggerRuleId;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mDefaultTriggerAction:Lcom/amazon/whispersync/client/metrics/trigger/TriggerAction;

    invoke-interface {v4, v3}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerAction;->execute(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-lez v1, :cond_7

    .line 172
    new-instance v2, Lcom/amazon/whispersync/client/metrics/DataPoint;

    const-string v3, "TriggerReason"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/DataPointType;->getDiscreteValueType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v5, v4}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    .line 175
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "TriggerActionCount"

    int-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "TriggerEvaluator"

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 182
    :try_start_5
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "TriggerEvaluator"

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/trigger/MetricEntryTriggerEvaluator;->evaluate(Lcom/amazon/whispersync/client/metrics/MetricEntry;)V

    return-void
.end method
