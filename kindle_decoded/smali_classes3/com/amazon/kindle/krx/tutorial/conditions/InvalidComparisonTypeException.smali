.class public Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
.super Ljava/lang/Exception;
.source "InvalidComparisonTypeException.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;->getMessageFromComparisonType(Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getMessageFromComparisonType(Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s is not a valid comparison type for the data being compared."

    .line 56
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
