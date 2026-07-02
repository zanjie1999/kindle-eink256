.class public Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;
.super Ljava/lang/Object;
.source "FlashcardsClickstreamMetricManager.java"


# static fields
.field private static final DECK_CREATE_CAUSE_BIG_PLUS_BUTTON_CLICK:Ljava/lang/String; = "bigPlusButtonClick"

.field private static final DECK_CREATE_CAUSE_IMPORT:Ljava/lang/String; = "import"

.field private static final DECK_CREATE_CAUSE_PLUS_BUTTON_CLICK:Ljava/lang/String; = "plusButtonClick"

.field private static final SOURCE_MANUAL:Ljava/lang/String; = "manual"

.field private static final SOURCE_NOTEBOOK:Ljava/lang/String; = "notebook"

.field private static final SOURCE_XRAY:Ljava/lang/String; = "xray"

.field private static cardEditedCause:Ljava/lang/String;

.field private static cardEditedEndCause:Ljava/lang/String;

.field private static editCardStarted:Z

.field private static quizOpenedCause:Ljava/lang/String;


# direct methods
.method private static createEditCardMetricMetadata(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frontType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->getCardSource(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "source"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cause"

    .line 188
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getCardSource(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Ljava/lang/String;
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "xray"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "custom"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "manual"

    return-object p0

    :cond_1
    const-string p0, "notebook"

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getDeckSource(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;
    .locals 4

    .line 198
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    .line 199
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "notebook"

    const-string/jumbo v3, "xray"

    if-eqz v1, :cond_2

    .line 201
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 202
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->getCardSource(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string v0, "manual"

    :cond_3
    return-object v0
.end method

.method public static markCardEditedFromDeckOverview()V
    .locals 1

    const-string v0, "editCardDeckOverviewClick"

    .line 125
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedCause:Ljava/lang/String;

    return-void
.end method

.method public static markCardEditedFromQuizMode()V
    .locals 1

    const-string v0, "editCardQuizModeClick"

    .line 133
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedCause:Ljava/lang/String;

    return-void
.end method

.method public static markQuizOpenedFromDeckListClicked()V
    .locals 1

    const-string v0, "quizFromAllDecksClicked"

    .line 76
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    return-void
.end method

.method public static markQuizOpenedFromResetMenuButtonClicked()V
    .locals 1

    const-string v0, "quizResetButtonClick"

    .line 84
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    return-void
.end method

.method public static markQuizOpenedFromStartOverButtonClicked()V
    .locals 1

    const-string v0, "quizEndAllButtonClicked"

    .line 92
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    return-void
.end method

.method public static markQuizOpenedFromStudyIncorrectButtonClicked()V
    .locals 1

    const-string v0, "quizEndIncorrectButtonClicked"

    .line 100
    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    return-void
.end method

.method public static reportDeckCreated(ILcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V
    .locals 5

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const-string v2, "manual"

    const-string v3, "import"

    const-string v4, ""

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    move-object v2, v4

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "bigPlusButtonClick"

    goto :goto_0

    :cond_1
    const-string v3, "plusButtonClick"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "xray"

    goto :goto_0

    :cond_3
    const-string v2, "notebook"

    .line 64
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cause"

    .line 65
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source"

    .line 66
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "KindleFlashcards"

    const-string p1, "DeckCreated"

    .line 67
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportEditCardEnded(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Z)V
    .locals 1

    .line 164
    sget-boolean v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->editCardStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedEndCause:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0, v0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->createEditCardMetricMetadata(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "canceled"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "KindleFlashcards"

    const-string v0, "EditCardEnded"

    .line 169
    invoke-static {p1, v0, p0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 171
    sput-boolean p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->editCardStarted:Z

    :cond_0
    return-void
.end method

.method public static reportEditCardStarted(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedCause:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0, v0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->createEditCardMetricMetadata(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x1

    .line 147
    sput-boolean v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->editCardStarted:Z

    const-string v0, "KindleFlashcards"

    const-string v1, "EditCardStarted"

    .line 149
    invoke-static {v0, v1, p0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    sget-object p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedCause:Ljava/lang/String;

    sput-object p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedEndCause:Ljava/lang/String;

    const/4 p0, 0x0

    .line 152
    sput-object p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->cardEditedCause:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static reportQuizStarted(ILcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    const-string v1, "cause"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->getDeckSource(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "source"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "KindleFlashcards"

    const-string p1, "QuizStarted"

    .line 115
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 117
    sput-object p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->quizOpenedCause:Ljava/lang/String;

    return-void
.end method
