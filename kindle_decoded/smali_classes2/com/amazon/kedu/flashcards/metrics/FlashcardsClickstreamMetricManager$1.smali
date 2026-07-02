.class synthetic Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;
.super Ljava/lang/Object;
.source "FlashcardsClickstreamMetricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->values()[Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->NOTEBOOK:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->XRAY:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager$1;->$SwitchMap$com$amazon$kedu$flashcards$FlashcardsActivity$DeckCreationParams$ORIGIN:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->EMPTY_DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
