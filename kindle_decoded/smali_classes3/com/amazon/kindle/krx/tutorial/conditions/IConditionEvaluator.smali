.class public interface abstract Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;
.super Ljava/lang/Object;
.source "IConditionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;
    }
.end annotation


# virtual methods
.method public abstract evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation
.end method
