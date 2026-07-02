.class final enum Lcom/amazon/kindle/displaymask/duo/SpannedState;
.super Ljava/lang/Enum;
.source "DuoFoldable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/displaymask/duo/SpannedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/displaymask/duo/SpannedState;

.field public static final enum DUAL_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;

.field public static final enum SINGLE_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/displaymask/duo/SpannedState;

    new-instance v1, Lcom/amazon/kindle/displaymask/duo/SpannedState;

    const/4 v2, 0x0

    const-string v3, "SINGLE_SCREEN_MODE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/displaymask/duo/SpannedState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/displaymask/duo/SpannedState;->SINGLE_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/displaymask/duo/SpannedState;

    const/4 v2, 0x1

    const-string v3, "DUAL_SCREEN_MODE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/displaymask/duo/SpannedState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/displaymask/duo/SpannedState;->DUAL_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/displaymask/duo/SpannedState;->$VALUES:[Lcom/amazon/kindle/displaymask/duo/SpannedState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/displaymask/duo/SpannedState;
    .locals 1

    const-class v0, Lcom/amazon/kindle/displaymask/duo/SpannedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/displaymask/duo/SpannedState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/displaymask/duo/SpannedState;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/displaymask/duo/SpannedState;->$VALUES:[Lcom/amazon/kindle/displaymask/duo/SpannedState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/displaymask/duo/SpannedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/displaymask/duo/SpannedState;

    return-object v0
.end method
