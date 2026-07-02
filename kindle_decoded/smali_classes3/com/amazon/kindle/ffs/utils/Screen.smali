.class final enum Lcom/amazon/kindle/ffs/utils/Screen;
.super Ljava/lang/Enum;
.source "UGSTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ffs/utils/Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ffs/utils/Screen;

.field public static final enum DISCOVERY:Lcom/amazon/kindle/ffs/utils/Screen;

.field public static final enum PAIRING:Lcom/amazon/kindle/ffs/utils/Screen;

.field public static final enum WIFI_LIST:Lcom/amazon/kindle/ffs/utils/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/ffs/utils/Screen;

    new-instance v1, Lcom/amazon/kindle/ffs/utils/Screen;

    const/4 v2, 0x0

    const-string v3, "DISCOVERY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/utils/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->DISCOVERY:Lcom/amazon/kindle/ffs/utils/Screen;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/utils/Screen;

    const/4 v2, 0x1

    const-string v3, "PAIRING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/utils/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->PAIRING:Lcom/amazon/kindle/ffs/utils/Screen;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/utils/Screen;

    const/4 v2, 0x2

    const-string v3, "WIFI_LIST"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/utils/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->WIFI_LIST:Lcom/amazon/kindle/ffs/utils/Screen;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->$VALUES:[Lcom/amazon/kindle/ffs/utils/Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/utils/Screen;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ffs/utils/Screen;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ffs/utils/Screen;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->$VALUES:[Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ffs/utils/Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ffs/utils/Screen;

    return-object v0
.end method
