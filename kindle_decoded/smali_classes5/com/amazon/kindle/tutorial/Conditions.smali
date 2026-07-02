.class public Lcom/amazon/kindle/tutorial/Conditions;
.super Ljava/lang/Object;
.source "Conditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/Conditions$NotCondition;,
        Lcom/amazon/kindle/tutorial/Conditions$OrCondition;,
        Lcom/amazon/kindle/tutorial/Conditions$AndCondition;
    }
.end annotation


# static fields
.field private static final AND_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPARISON_KEY:Ljava/lang/String; = "comparisonType"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NOT_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OR_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOPIC_KEY:Ljava/lang/String; = "topic"

.field private static final VALUE_KEY:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "and"

    const-string v1, "all"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/Conditions;->AND_KEYS:Ljava/util/Collection;

    const-string/jumbo v0, "or"

    const-string v1, "any"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/Conditions;->OR_KEYS:Ljava/util/Collection;

    const-string v0, "not"

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/Conditions;->NOT_KEYS:Ljava/util/Collection;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/ICondition;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 125
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    sget-object v1, Lcom/amazon/kindle/tutorial/Conditions;->AND_KEYS:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/tutorial/Conditions;->OR_KEYS:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/amazon/kindle/tutorial/Conditions;->NOT_KEYS:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/amazon/kindle/tutorial/Conditions;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/ICondition;

    move-result-object p0

    .line 138
    new-instance v0, Lcom/amazon/kindle/tutorial/Conditions$NotCondition;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/Conditions$NotCondition;-><init>(Lcom/amazon/kindle/tutorial/ICondition;)V

    return-object v0

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 130
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 131
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/tutorial/Conditions;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/ICondition;

    move-result-object v3

    .line 132
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_2
    sget-object p0, Lcom/amazon/kindle/tutorial/Conditions;->AND_KEYS:Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/amazon/kindle/tutorial/Conditions$AndCondition;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/tutorial/Conditions$AndCondition;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/amazon/kindle/tutorial/Conditions$OrCondition;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/tutorial/Conditions$OrCondition;-><init>(Ljava/util/Collection;)V

    :goto_2
    return-object p0

    :cond_4
    const-string/jumbo v0, "topic"

    .line 141
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    .line 142
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 143
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "comparisonType"

    .line 144
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    sget-object v3, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 148
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 149
    invoke-static {p0}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->getComparisonType(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    move-result-object v3

    .line 152
    :cond_5
    new-instance p0, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/kindle/tutorial/ConfigComparisonCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)V

    return-object p0
.end method
