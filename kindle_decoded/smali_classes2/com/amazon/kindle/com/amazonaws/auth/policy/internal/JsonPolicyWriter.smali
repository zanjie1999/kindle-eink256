.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle.com.amazonaws.auth.policy"

    .line 52
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    .line 59
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private groupConditionsByTypeAndKey(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;

    .line 307
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->getType()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->getConditionKey()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 315
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->addValuesToKey(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private groupPrincipalByScheme(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    .line 241
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 246
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isNotNull(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private jsonStringOf(Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Version"

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Id"

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Statement"

    .line 104
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayStart(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->getStatements()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sid"

    invoke-direct {p0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getEffect()Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Effect"

    .line 112
    invoke-direct {p0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePrincipals(Ljava/util/List;)V

    .line 119
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getActions()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeActions(Ljava/util/List;)V

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getResources()Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeResources(Ljava/util/List;)V

    .line 127
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getConditions()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeConditions(Ljava/util/List;)V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    goto/16 :goto_0

    .line 134
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayEnd()V

    .line 136
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 138
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->flush()V

    .line 140
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;

    .line 194
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Action"

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private writeConditions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->groupConditionsByTypeAndKey(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "Condition"

    .line 152
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->getConditionsByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    return-void
.end method

.method private writeJsonArray(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayStart(Ljava/lang/String;)V

    .line 329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayEnd()V

    return-void
.end method

.method private writeJsonArrayEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private writeJsonArrayStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 362
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 381
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private writeJsonObjectEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private writeJsonObjectStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 343
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method

.method private writePrincipals(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Principal"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    sget-object v4, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->All:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->All:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_0
    invoke-direct {p0, v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->groupPrincipalByScheme(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 217
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    :goto_1
    return-void
.end method

.method private writeResources(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;

    .line 179
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Resource"

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public writePolicyToString(Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonStringOf(Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 79
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to serialize policy to JSON string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    :catch_2
    throw p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Policy cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
