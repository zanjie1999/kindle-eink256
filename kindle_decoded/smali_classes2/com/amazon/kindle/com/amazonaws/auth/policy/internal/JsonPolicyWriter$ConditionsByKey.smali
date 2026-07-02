.class Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConditionsByKey"
.end annotation


# instance fields
.field private conditionsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->conditionsByKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addValuesToKey(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->getConditionsByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->conditionsByKey:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public getConditionsByKey(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->conditionsByKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->conditionsByKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
