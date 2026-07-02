.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition;
.super Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;
.source "ArnCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    .line 89
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
