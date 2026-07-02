.class public Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;
.super Ljava/lang/Object;
.source "ConfigComparisonCondition.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/ICondition;


# instance fields
.field private comparisonType:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field private key:Ljava/lang/String;

.field private topic:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->topic:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->key:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->value:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->comparisonType:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z
    .locals 6

    .line 46
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->topic:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->value:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;->comparisonType:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->evaluateCondition(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1
.end method
