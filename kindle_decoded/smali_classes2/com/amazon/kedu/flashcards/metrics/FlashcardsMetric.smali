.class public final enum Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;
.super Ljava/lang/Enum;
.source "FlashcardsMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum AVAILABLE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum BOOK_CLOSE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum CARDS_FOR_DECK_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum CARDS_FOR_DECK_ORDERING:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum CARDS_FOR_DECK_QUIZ:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum DECKS_FOR_ASIN_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum PLUGIN_FIRST_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum SESSION_END:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum SESSION_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum SYNCHRONIZE_ASIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum SYNCHRONIZE_DECK:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

.field public static final enum XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v1, 0x0

    const-string v2, "PLUGIN_FIRST_OPEN"

    const-string v3, "PluginFirstOpen"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 9
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v2, 0x1

    const-string v3, "XRAY_DECK_CREATED"

    const-string v4, "XrayDeckCreated"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 10
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v3, 0x2

    const-string v4, "NOTEBOOK_DECK_CREATED"

    const-string v5, "NotebookDeckCreated"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 11
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v4, 0x3

    const-string v5, "PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED"

    const-string v6, "PluginFirstOpenCreateXrayDeck"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 12
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v5, 0x4

    const-string v6, "PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED"

    const-string v7, "PluginFirstOpenCreateNotebookDeck"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 13
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v6, 0x5

    const-string v7, "SESSION_OPEN"

    const-string v8, "SessionOpen"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SESSION_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 14
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v7, 0x6

    const-string v8, "SESSION_END"

    const-string v9, "SessionEnd"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SESSION_END:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 15
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/4 v8, 0x7

    const-string v9, "SYNCHRONIZE_ASIN"

    const-string v10, "SynchronizeAsin"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_ASIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 16
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v9, 0x8

    const-string v10, "SYNCHRONIZE_DECK"

    const-string v11, "SynchronizeDeck"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_DECK:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 17
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v10, 0x9

    const-string v11, "AVAILABLE"

    const-string v12, "Available"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->AVAILABLE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 18
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v11, 0xa

    const-string v12, "BOOK_CLOSE"

    const-string v13, "BookClose"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->BOOK_CLOSE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 19
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v12, 0xb

    const-string v13, "CARDS_FOR_DECK_MAIN"

    const-string v14, "CardsForDeckMain"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 20
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v13, 0xc

    const-string v14, "CARDS_FOR_DECK_QUIZ"

    const-string v15, "CardsForDeckQuiz"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_QUIZ:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 21
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v14, 0xd

    const-string v15, "CARDS_FOR_DECK_ORDERING"

    const-string v13, "CardsForDeckOrdering"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_ORDERING:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 22
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v13, 0xe

    const-string v15, "DECKS_FOR_ASIN_MAIN"

    const-string v14, "DecksForAsinMain"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->DECKS_FOR_ASIN_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 6
    sget-object v15, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SESSION_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SESSION_END:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_ASIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_DECK:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->AVAILABLE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->BOOK_CLOSE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_MAIN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_QUIZ:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->CARDS_FOR_DECK_ORDERING:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->$VALUES:[Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->$VALUES:[Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->name:Ljava/lang/String;

    return-object v0
.end method
