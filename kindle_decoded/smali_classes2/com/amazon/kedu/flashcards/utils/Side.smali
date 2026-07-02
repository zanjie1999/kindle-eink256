.class public final enum Lcom/amazon/kedu/flashcards/utils/Side;
.super Ljava/lang/Enum;
.source "Side.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/utils/Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/utils/Side;

.field public static final enum BACK:Lcom/amazon/kedu/flashcards/utils/Side;

.field public static final enum FRONT:Lcom/amazon/kedu/flashcards/utils/Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/kedu/flashcards/utils/Side;

    const/4 v1, 0x0

    const-string v2, "FRONT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/utils/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 9
    new-instance v0, Lcom/amazon/kedu/flashcards/utils/Side;

    const/4 v2, 0x1

    const-string v3, "BACK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/utils/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kedu/flashcards/utils/Side;

    .line 6
    sget-object v4, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kedu/flashcards/utils/Side;->$VALUES:[Lcom/amazon/kedu/flashcards/utils/Side;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/utils/Side;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/utils/Side;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/utils/Side;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->$VALUES:[Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/utils/Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/utils/Side;

    return-object v0
.end method
