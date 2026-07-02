.class public final enum Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
.super Ljava/lang/Enum;
.source "CardModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/CardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuizState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

.field public static final enum CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

.field public static final enum INCORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

.field public static final enum UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 161
    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    const/4 v1, 0x0

    const-string v2, "UNDECIDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    const/4 v2, 0x1

    const-string v3, "CORRECT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    new-instance v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    const/4 v3, 0x2

    const-string v4, "INCORRECT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->INCORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    .line 159
    sget-object v5, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->$VALUES:[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
    .locals 1

    .line 159
    const-class v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
    .locals 1

    .line 159
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->$VALUES:[Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    return-object v0
.end method
