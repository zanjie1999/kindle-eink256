.class Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;
.super Ljava/lang/Object;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardCreationParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;
    }
.end annotation


# instance fields
.field private backText:Ljava/lang/String;

.field private backType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

.field private begin:Lcom/amazon/kindle/krx/reader/IPosition;

.field private constructionType:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private frontText:Ljava/lang/String;

.field private frontType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 577
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 578
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 580
    sget-object p1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->GHL:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->constructionType:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontText:Ljava/lang/String;

    .line 567
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 568
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->backText:Ljava/lang/String;

    .line 569
    iput-object p4, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->backType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 571
    sget-object p1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->TEXT:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->constructionType:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)V
    .locals 10

    .line 585
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$CardCreationParams$ConstructionType:[I

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->constructionType:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newCard(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    goto :goto_0

    .line 588
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v4

    iget-object v6, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontText:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->frontType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    iget-object v8, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->backText:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->backType:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newCard(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    :goto_0
    return-void
.end method
