.class public final Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ConditionFactory;
.super Ljava/lang/Object;
.source "ConditionFactory.java"


# direct methods
.method public static newSourceArnCondition(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;
    .locals 3

    .line 121
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v2, "aws:SourceArn"

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
