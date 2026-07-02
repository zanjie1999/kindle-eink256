.class public Lcom/amazon/kedu/flashcards/FlashcardsActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;,
        Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;
    }
.end annotation


# static fields
.field public static final FLASHCARD_BOOK_ASIN:Ljava/lang/String; = "flashcardBookAsin"

.field public static final FLASHCARD_BOOK_GUID:Ljava/lang/String; = "flashcardBookGuid"

.field public static final FLASHCARD_DECK_TITLE:Ljava/lang/String; = "flashcardDeckTitle"

.field public static final FLASHCARD_ORIGIN:Ljava/lang/String; = "flashcardOrigin"

.field public static final FLASHCARD_PROMPTS:Ljava/lang/String; = "flashcardPrompts"

.field public static final FLASHCARD_RESPONSES:Ljava/lang/String; = "flashcardResponses"

.field public static final FLASHCARD_START_POSITIONS_INT:Ljava/lang/String; = "flashcardStartPositionsInt"

.field public static final FLASHCARD_START_POSITIONS_STRING:Ljava/lang/String; = "flashcardStartPositionsString"

.field public static final FLASHCARD_TYPES:Ljava/lang/String; = "flashcardTypes"

.field private static final SAVED_STATE_TITLE_STRING:Ljava/lang/String; = "flashcardDeckTitleEdited"

.field private static final TAG:Ljava/lang/String;

.field private static flashcardCreationDataBundle:Landroid/os/Bundle;


# instance fields
.field private cardCountTextView:Landroid/widget/TextView;

.field private deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

.field private deckTitleEditText:Landroid/widget/EditText;

.field private doneMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/FlashcardsActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->updateDoneMenuState()V

    return-void
.end method

.method private buildDefaultDeckTitle()Ljava/lang/String;
    .locals 7

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 370
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDecks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 372
    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_default_deck_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, 0x1

    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    move v3, v6

    goto :goto_1
.end method

.method private createDeckFromSuppliedData(Landroid/os/Bundle;)Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;
    .locals 7

    .line 492
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;-><init>(Landroid/content/Context;)V

    const-string v1, "flashcardStartPositionsString"

    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "flashcardStartPositionsInt"

    .line 495
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "flashcardPrompts"

    .line 497
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "flashcardResponses"

    .line 498
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "flashcardOrigin"

    .line 500
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 504
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startNotebookDeckCreation()V

    :try_start_0
    const-string v3, "flashcardTypes"

    .line 508
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 509
    invoke-static {v0, v1, v2, p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->createFlashcardsFromNotebook(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v6

    .line 510
    sget-object p1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->NOTEBOOK:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->setOrigin(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-static {v6}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopNotebookDeckCreation(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v6}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopNotebookDeckCreation(I)V

    .line 515
    throw p1

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 519
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startXrayDeckCreation()V

    .line 523
    :try_start_1
    invoke-static {v0, v3, v4}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->createFlashcardsFromStrings(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v6

    .line 524
    sget-object p1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->setOrigin(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    invoke-static {v6}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopXrayDeckCreation(I)V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {v6}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopXrayDeckCreation(I)V

    .line 529
    throw p1

    :cond_1
    if-eqz v5, :cond_2

    .line 533
    invoke-virtual {v0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->setOrigin(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static createFlashcardsFromNotebook(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 128
    invoke-static {p1, p2, p3}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->toIPositions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->createFlashcardsFromNotesWithIPositions(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static createFlashcardsFromNotesWithIPositions(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/List;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 141
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/reader/IPosition;

    .line 142
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->toKRXIAnnotationType(I)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v6

    .line 144
    invoke-static {v0, v5, v6}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->getAnnotationAtPosition(Lcom/amazon/kindle/krx/reader/IAnnotationManager;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    move-result-object v7

    if-nez v7, :cond_0

    .line 147
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v7

    .line 148
    sget-object v8, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find one and only one annotation for startPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; skipping"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_0
    invoke-static {v7, v2}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->isSameAnnotation(Lcom/amazon/kindle/krx/content/KRXIAnnotation;Lcom/amazon/kindle/krx/content/KRXIAnnotation;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 162
    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v8

    .line 164
    sget-object v9, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    if-eq v9, v10, :cond_6

    const/4 v6, 0x2

    if-eq v9, v6, :cond_3

    const/4 v5, 0x3

    if-eq v9, v5, :cond_2

    goto/16 :goto_1

    .line 210
    :cond_2
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    sget-object v8, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v6, v7, v8}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    goto/16 :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 188
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    sget-object v6, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v8, v6, v11, v7}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    goto/16 :goto_1

    .line 194
    :cond_4
    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 195
    invoke-interface {v7}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    .line 194
    invoke-interface {v0, v5, v6, v7}, Lcom/amazon/kindle/krx/reader/IAnnotationManager;->getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;

    move-result-object v5

    .line 196
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 198
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 199
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    sget-object v6, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v8, v6, v7, v9}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    goto :goto_1

    .line 205
    :cond_5
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    sget-object v6, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v8, v6, v11, v7}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 167
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 169
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    sget-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v8, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v6, v7, v11, v8}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    goto :goto_1

    .line 173
    :cond_7
    sget-object v7, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-static {v0, v5, v7}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->getAnnotationAtPosition(Lcom/amazon/kindle/krx/reader/IAnnotationManager;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 177
    new-instance v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->HIGHLIGHT:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v9, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v2, v7, v8, v6, v9}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v2}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    move-object v2, v5

    goto :goto_1

    .line 183
    :cond_8
    new-instance v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    sget-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NOTE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    sget-object v8, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->NONE:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v5, v6, v7, v11, v8}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return v4
.end method

.method private static createFlashcardsFromStrings(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 87
    new-instance v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->XRAY:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    invoke-virtual {p0, v2}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static getAnnotationAtPosition(Lcom/amazon/kindle/krx/reader/IAnnotationManager;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Lcom/amazon/kindle/krx/content/KRXIAnnotation;
    .locals 3

    .line 247
    invoke-interface {p0, p1, p1, p2}, Lcom/amazon/kindle/krx/reader/IAnnotationManager;->getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;

    move-result-object p0

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 255
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->samePosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getCardCountString()Ljava/lang/String;
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getCardCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_no_cards_label:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getCardCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 474
    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_one_card_label:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_cards_count_label:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getCardCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getOriginString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_card_origin_label:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getFlashcardCreationData()Landroid/os/Bundle;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->flashcardCreationDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private static isSameAnnotation(Lcom/amazon/kindle/krx/content/KRXIAnnotation;Lcom/amazon/kindle/krx/content/KRXIAnnotation;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object p0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static samePosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 3

    .line 270
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 276
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 281
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static setFlashcardCreationData(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->flashcardCreationDataBundle:Landroid/os/Bundle;

    return-void
.end method

.method private startNewCardsActivity()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->NEW_DECK:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startQuizActivity()V
    .locals 3

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deckId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static toIPositions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 100
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 102
    sget-object v3, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->toKRXIAnnotationType(I)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positions and types sizes do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toKRXIAnnotationType(I)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    .line 120
    invoke-static {}, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->values()[Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private updateDoneMenuState()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->doneMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 362
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->doneMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 685
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 689
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN_EditCardOrDeck:I

    return p1

    .line 693
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_NonNLN_EditCardOrDeck:I

    return p1

    .line 698
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 700
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_EditCardOrDeck:I

    return p1

    .line 704
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_EditCardOrDeck:I

    return p1
.end method

.method public onClickedCreateDeck()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->create(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->getCardCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->startNewCardsActivity()V

    goto :goto_0

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->startQuizActivity()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 287
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 295
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$layout;->fc_deck_creation:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 296
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->deck_name_edit_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    .line 297
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->card_count_label:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->cardCountTextView:Landroid/widget/TextView;

    .line 299
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 301
    invoke-static {}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->getCancelIcon()I

    move-result p1

    .line 302
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 304
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getBookIdentifier(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->setActiveBook(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->getFlashcardCreationData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "flashcardDeckTitle"

    .line 307
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->buildDefaultDeckTitle()Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 316
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->createDeckFromSuppliedData(Landroid/os/Bundle;)Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deck:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;

    .line 318
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->cardCountTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->getCardCountString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$1;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 335
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$2;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 393
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 394
    sget v1, Lcom/amazon/kedu/flashcards/R$menu;->fc_menu_deck_create_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 396
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->action_done:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->doneMenuItem:Landroid/view/MenuItem;

    .line 397
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->updateDoneMenuState()V

    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 411
    :cond_0
    sget v2, Lcom/amazon/kedu/flashcards/R$id;->action_done:I

    if-ne v0, v2, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->onClickedCreateDeck()Z

    move-result p1

    if-nez p1, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return v1

    .line 420
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "flashcardDeckTitleEdited"

    const/4 v1, 0x0

    .line 433
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 426
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->deckTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flashcardDeckTitleEdited"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
