.class public Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
.super Lcom/amazon/kedu/flashcards/models/CardModel;
.source "WhispersyncCardModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;
    }
.end annotation


# static fields
.field private static final JSON_CARDBACK:Ljava/lang/String; = "back"

.field private static final JSON_CARDCREATED:Ljava/lang/String; = "created"

.field private static final JSON_CARDEDITED:Ljava/lang/String; = "edited"

.field private static final JSON_CARDFRONT:Ljava/lang/String; = "front"

.field private static final JSON_CARDINDEX:Ljava/lang/String; = "idx"

.field private static final JSON_CARDQUIZINDEX:Ljava/lang/String; = "idx"

.field private static final JSON_CARDQUIZSTATE:Ljava/lang/String; = "score"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kedu/flashcards/models/CardModel;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V

    return-void
.end method

.method protected static jsonStringFromQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$1;->$SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "incorrect"

    return-object p0

    :cond_1
    const-string p0, "correct"

    return-object p0

    :cond_2
    const-string/jumbo p0, "undecided"

    return-object p0
.end method

.method protected static quizStateFromJsonString(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
    .locals 5

    .line 37
    invoke-static {}, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->values()[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    invoke-static {v3}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->jsonStringFromQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBaseDataJSON()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;,
            Lorg/json/JSONException;,
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "front"

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "back"

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "created"

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getDateCreated()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "edited"

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getDateEdited()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 89
    throw v0

    .line 76
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;

    const-string v1, "Flashcard data not complete, cannot get JSON"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V

    throw v0
.end method

.method public getOrderingDataJSON()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "idx"

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 179
    throw v0

    .line 169
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;

    const-string v1, "Flashcard data not complete, cannot get JSON"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V

    throw v0
.end method

.method public getQuizDataJSON()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "score"

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->getQuizStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idx"

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    throw v0

    .line 132
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;

    const-string v1, "Flashcard data not complete, cannot get JSON"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V

    throw v0
.end method

.method protected getQuizStateString()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->jsonStringFromQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoadComplete()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBaseDataJSON(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    const-string v0, "edited"

    const-string v1, "created"

    const-string v2, "back"

    const-string v3, "front"

    .line 99
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->setFront(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/models/CardModel;->setFront(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    .line 110
    :goto_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->setBack(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/models/CardModel;->setBack(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    .line 119
    :goto_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v2

    :goto_2
    invoke-virtual {p0, v5, v6}, Lcom/amazon/kedu/flashcards/models/CardModel;->setDateCreated(J)V

    .line 120
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v2

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/kedu/flashcards/models/CardModel;->setDateEdited(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setOrderingDataJSON(Ljava/lang/String;)V
    .locals 2

    const-string v0, "idx"

    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->setSortIndex(Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setQuizDataJSON(Ljava/lang/String;)V
    .locals 3

    const-string v0, "idx"

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "score"

    .line 155
    invoke-static {v1, p1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->getCardQuizScore(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 157
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;->quizStateFromJsonString(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
