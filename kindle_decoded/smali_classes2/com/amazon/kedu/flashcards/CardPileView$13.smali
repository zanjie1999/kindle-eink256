.class synthetic Lcom/amazon/kedu/flashcards/CardPileView$13;
.super Ljava/lang/Object;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/CardPileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 482
    invoke-static {}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->values()[Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$13;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kedu/flashcards/CardPileView$13;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kedu/flashcards/CardPileView$13;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
