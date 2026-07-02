.class synthetic Lcom/amazon/kedu/flashcards/models/QuizDeckModel$2;
.super Ljava/lang/Object;
.source "QuizDeckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/QuizDeckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->values()[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$2;->$SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$2;->$SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$2;->$SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->INCORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
