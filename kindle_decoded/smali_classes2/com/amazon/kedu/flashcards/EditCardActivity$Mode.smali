.class public final enum Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;
.super Ljava/lang/Enum;
.source "EditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

.field public static final enum ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

.field public static final enum EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

.field public static final enum NEW_DECK:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 487
    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v1, 0x0

    const-string v2, "EDIT_CARD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v2, 0x1

    const-string v3, "ADD_CARD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v3, 0x2

    const-string v4, "NEW_DECK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->NEW_DECK:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    .line 485
    sget-object v5, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->$VALUES:[Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;
    .locals 1

    .line 485
    const-class v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;
    .locals 1

    .line 485
    sget-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->$VALUES:[Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-virtual {v0}, [Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-object v0
.end method
