.class public final enum Lcom/amazon/kindle/ffs/view/starting/Status;
.super Ljava/lang/Enum;
.source "DiscoveryBottomSheetStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ffs/view/starting/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ffs/view/starting/Status;

.field public static final enum CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

.field public static final enum NOT_CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/ffs/view/starting/Status;

    new-instance v1, Lcom/amazon/kindle/ffs/view/starting/Status;

    const/4 v2, 0x0

    const-string v3, "NOT_CONNECTING"

    .line 4
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/starting/Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/starting/Status;->NOT_CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/starting/Status;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    .line 5
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/starting/Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/starting/Status;->CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/ffs/view/starting/Status;->$VALUES:[Lcom/amazon/kindle/ffs/view/starting/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/kindle/ffs/view/starting/Status;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/starting/Status;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/view/starting/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ffs/view/starting/Status;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ffs/view/starting/Status;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/Status;->$VALUES:[Lcom/amazon/kindle/ffs/view/starting/Status;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ffs/view/starting/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ffs/view/starting/Status;

    return-object v0
.end method


# virtual methods
.method public final getI()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/amazon/kindle/ffs/view/starting/Status;->i:I

    return v0
.end method
