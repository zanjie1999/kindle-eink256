.class public Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;
.super Ljava/lang/Object;
.source "TutorialComparatorHelper.java"


# direct methods
.method public static compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 106
    :cond_1
    new-instance p0, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Comparison type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported for boolean comparison."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static compareDates(Ljava/util/Date;Ljava/util/Date;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static compareIntegers(IILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2

    .line 24
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    if-gt p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_2
    if-ge p0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_3
    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_4
    if-lt p0, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    if-le p0, p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static compareLongs(JJLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2

    .line 51
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    return v1

    :pswitch_0
    cmp-long p4, p0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    cmp-long p4, p0, p2

    if-gtz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_2
    cmp-long p4, p0, p2

    if-gez p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_3
    cmp-long p4, p0, p2

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_4
    cmp-long p4, p0, p2

    if-ltz p4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    cmp-long p4, p0, p2

    if-lez p4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static compareStrings(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 86
    :cond_0
    new-instance p0, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Comparison type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported for string comparison."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
