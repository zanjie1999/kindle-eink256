.class public Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;
.super Ljava/lang/Object;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeckCreationParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;
    }
.end annotation


# instance fields
.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private origin:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->cards:Ljava/util/ArrayList;

    .line 617
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addCard(Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->origin:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->reportDeckCreated(ILcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V

    .line 665
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 666
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->cards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;

    .line 668
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;->create(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCardCount()I
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginString()Ljava/lang/String;
    .locals 2

    .line 647
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$3;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->origin:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_origin_notebook:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_origin_xray:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOrigin(Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;->origin:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    return-void
.end method
