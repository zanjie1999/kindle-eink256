.class Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;
.super Ljava/lang/Object;
.source "SimpleTriggerExpression.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
    }
.end annotation


# instance fields
.field private final mTriggerOperator:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

.field private final mTriggerThreshold:D


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;D)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerOperator:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    .line 50
    iput-wide p2, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerThreshold:D

    return-void
.end method


# virtual methods
.method public evaluate(D)Z
    .locals 5

    .line 68
    sget-object v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$1;->$SwitchMap$com$amazon$client$metrics$trigger$SimpleTriggerExpression$TriggerOperator:[I

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerOperator:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    .line 74
    :cond_0
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerThreshold:D

    cmpl-double v0, p1, v3

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 72
    :cond_2
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerThreshold:D

    cmpg-double v0, p1, v3

    if-gez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 70
    :cond_4
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerThreshold:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method getOperator()Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerOperator:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object v0
.end method

.method getThreshold()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;->mTriggerThreshold:D

    return-wide v0
.end method
