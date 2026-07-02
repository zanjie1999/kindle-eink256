.class public final enum Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;
.super Ljava/lang/Enum;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ORIGIN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

.field public static final enum DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

.field public static final enum EMPTY_DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

.field public static final enum NOTEBOOK:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

.field public static final enum XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 678
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v1, 0x0

    const-string v2, "DECK_LIST"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v2, 0x1

    const-string v3, "EMPTY_DECK_LIST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->EMPTY_DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v3, 0x2

    const-string v4, "XRAY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v4, 0x3

    const-string v5, "NOTEBOOK"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->NOTEBOOK:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    .line 676
    sget-object v6, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->EMPTY_DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->$VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;
    .locals 1

    .line 676
    const-class v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;
    .locals 1

    .line 676
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->$VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    return-object v0
.end method
