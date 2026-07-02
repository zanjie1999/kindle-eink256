.class public Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
.super Lcom/amazon/kedu/flashcards/models/QuizDeckModel;
.source "WhispersyncQuizDeckModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;
    }
.end annotation


# static fields
.field private static final JSON_DECKCREATED:Ljava/lang/String; = "created"

.field private static final JSON_DECKEDITED:Ljava/lang/String; = "edited"

.field private static final JSON_DECKINDEX:Ljava/lang/String; = "idx"

.field private static final JSON_DECKNAME:Ljava/lang/String; = "name"

.field private static final JSON_DECKQUIZSTART:Ljava/lang/String; = "quizStart"

.field private static final JSON_DECKTOPCARD:Ljava/lang/String; = "top"

.field private static final JSON_DECKTOPCORRECTCARD:Ljava/lang/String; = "topCorrect"

.field private static final JSON_DECKTOPCORRECTFLIPPED:Ljava/lang/String; = "topCorrectFlipped"

.field private static final JSON_DECKTOPFLIPPED:Ljava/lang/String; = "topFlipped"

.field private static final JSON_DECKTOPINCORRECTCARD:Ljava/lang/String; = "topIncorrect"

.field private static final JSON_DECKTOPINCORRECTFLIPPED:Ljava/lang/String; = "topIncorrectFlipped"

.field private static final JSON_IOS_FALSE:Ljava/lang/String; = "NO"

.field private static final JSON_IOS_TRUE:Ljava/lang/String; = "YES"


# instance fields
.field private dateQuizStarted:J

.field private topCardId:Ljava/lang/String;

.field private topCorrectCardId:Ljava/lang/String;

.field private topCorrectFlipped:Z

.field private topFlipped:Z

.field private topIncorrectCardId:Ljava/lang/String;

.field private topIncorrectFlipped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method private mark()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/QuizCompletedEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/events/QuizCompletedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->dismiss()V

    .line 159
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public getBaseDataJSON()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "created"

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateCreated()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "edited"

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 105
    throw v0

    .line 93
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;

    const-string v1, "FlashcardDeck data not complete, cannot get JSON"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V

    throw v0
.end method

.method public getModifierDataJSON()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "idx"

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "top"

    .line 122
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "topFlipped"

    .line 123
    iget-boolean v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topFlipped:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "YES"

    const-string v4, "NO"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "topCorrect"

    .line 124
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCorrectCardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "topCorrectFlipped"

    .line 125
    iget-boolean v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCorrectFlipped:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "topIncorrect"

    .line 126
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topIncorrectCardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "topIncorrectFlipped"

    .line 127
    iget-boolean v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topIncorrectFlipped:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "quizStart"

    .line 128
    iget-wide v2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->dateQuizStarted:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    throw v0

    .line 115
    :cond_3
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;

    const-string v1, "FlashcardDeck data not complete, cannot get JSON"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V

    throw v0
.end method

.method public isLoadComplete()Z
    .locals 2

    .line 181
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->areCardsLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markCorrect()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->markCorrect()V

    .line 143
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->mark()V

    return-void
.end method

.method public markIncorrect()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->markIncorrect()V

    .line 151
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->mark()V

    return-void
.end method

.method public reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    .line 175
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazon/kedu/flashcards/events/QuizResetEvent;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/events/QuizResetEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public setDataJSONs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-string v0, "quizStart"

    const-string/jumbo v1, "topCorrectFlipped"

    const-string/jumbo v2, "topCorrect"

    const-string/jumbo v3, "topFlipped"

    const-string/jumbo v4, "top"

    const-string v5, "idx"

    const-string v6, "edited"

    const-string v7, "created"

    const-string v8, "name"

    .line 63
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v10

    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const-wide/16 v11, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v11

    :goto_1
    invoke-virtual {p0, v7, v8}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setDateCreated(J)V

    .line 68
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v11

    :goto_2
    invoke-virtual {p0, v6, v7}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setDateEdited(J)V

    .line 70
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x0

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setSortIndex(Ljava/lang/Double;)V

    .line 71
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    move-object p2, v10

    :goto_4
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCardId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "YES"

    const/4 v6, 0x0

    if-eqz p2, :cond_5

    .line 73
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    iput-boolean p2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topFlipped:Z

    .line 74
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_6
    iput-object v10, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCorrectCardId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :goto_6
    iput-boolean p2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topCorrectFlipped:Z

    const-string/jumbo p2, "topIncorrect"

    .line 77
    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->getTopIncorrectCardId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topIncorrectCardId:Ljava/lang/String;

    const-string/jumbo p2, "topIncorrectFlipped"

    .line 78
    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->getTopIncorrectFlipped(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->topIncorrectFlipped:Z

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v11

    :cond_9
    iput-wide v11, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->dateQuizStarted:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public shuffle()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->shuffle()V

    const-string v0, "KindleFlashcards"

    const-string v1, "ShuffleDeck"

    .line 167
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/QuizResetEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/events/QuizResetEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method
