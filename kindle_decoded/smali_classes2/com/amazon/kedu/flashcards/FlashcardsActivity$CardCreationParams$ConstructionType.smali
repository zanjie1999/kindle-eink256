.class final enum Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;
.super Ljava/lang/Enum;
.source "FlashcardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConstructionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

.field public static final enum GHL:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

.field public static final enum TEXT:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 601
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->TEXT:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    const/4 v2, 0x1

    const-string v3, "GHL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->GHL:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    .line 599
    sget-object v4, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->TEXT:Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->$VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;
    .locals 1

    .line 599
    const-class v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;
    .locals 1

    .line 599
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->$VALUES:[Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/FlashcardsActivity$CardCreationParams$ConstructionType;

    return-object v0
.end method
