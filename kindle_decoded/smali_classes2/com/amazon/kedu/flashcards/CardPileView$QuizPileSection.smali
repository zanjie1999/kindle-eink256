.class public final enum Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;
.super Ljava/lang/Enum;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/CardPileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuizPileSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field public static final enum BOTTOM:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field public static final enum LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field public static final enum NONE:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field public static final enum RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field public static final enum TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1193
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1194
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1195
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v3, 0x2

    const-string v4, "BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->BOTTOM:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1196
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v4, 0x3

    const-string v5, "LEFT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1197
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->NONE:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1191
    sget-object v7, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->BOTTOM:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->$VALUES:[Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;
    .locals 1

    .line 1191
    const-class v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;
    .locals 1

    .line 1191
    sget-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->$VALUES:[Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    return-object v0
.end method
