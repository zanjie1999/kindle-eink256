.class public Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpressionCodec;
.super Ljava/lang/Object;
.source "TriggerExpressionCodec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TriggerExpressionCodec"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeTriggerExpression(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/TriggerExpression;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "TriggerExpressionCodec"

    if-nez p1, :cond_0

    const-string p1, "SerializeTriggerExpression was null. "

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, " "

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger expression is not properly formatted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 42
    aget-object p1, v2, p1

    const/4 v3, 0x1

    .line 43
    aget-object v2, v2, v3

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    move-result-object v3

    .line 51
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 53
    new-instance v6, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;

    invoke-direct {v6, v3, v4, v5}, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;-><init>(Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 58
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger expression has a malformed operator value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 55
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger expression has a malformed threshold value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
