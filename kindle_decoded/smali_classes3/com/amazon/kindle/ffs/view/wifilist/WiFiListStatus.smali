.class public final enum Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;
.super Ljava/lang/Enum;
.source "WiFiListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field public static final enum CONNECTING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field public static final enum ERROR:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field public static final enum NETWORK_SELECTION:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field public static final enum PASSWORD_INPUT:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field public static final enum SCANNING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    const/4 v2, 0x0

    const-string v3, "SCANNING"

    .line 32
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->SCANNING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    const/4 v2, 0x1

    const-string v3, "NETWORK_SELECTION"

    .line 33
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->NETWORK_SELECTION:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    const/4 v2, 0x2

    const-string v3, "CONNECTING"

    .line 34
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->CONNECTING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    const/4 v2, 0x3

    const-string v3, "ERROR"

    .line 35
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->ERROR:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    const/4 v2, 0x4

    const-string v3, "PASSWORD_INPUT"

    .line 36
    invoke-direct {v1, v3, v2, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->PASSWORD_INPUT:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->$VALUES:[Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->$VALUES:[Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    return-object v0
.end method
