.class public final enum Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;
.super Ljava/lang/Enum;
.source "QuizDeckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/QuizDeckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

.field public static final enum All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

.field public static final enum Correct:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

.field public static final enum Incorrect:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 314
    new-instance v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    const/4 v1, 0x0

    const-string v2, "Correct"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Correct:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    .line 315
    new-instance v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    const/4 v2, 0x1

    const-string v3, "Incorrect"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Incorrect:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    .line 316
    new-instance v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    const/4 v3, 0x2

    const-string v4, "All"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    .line 312
    sget-object v5, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Correct:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Incorrect:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->$VALUES:[Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;
    .locals 1

    .line 312
    const-class v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;
    .locals 1

    .line 312
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->$VALUES:[Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    return-object v0
.end method
