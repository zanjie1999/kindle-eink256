.class public final enum Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum CANCELLED:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum ERROR:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum NOT_SUPPORTED_HINT_TYPE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum NO_HINTS_AVAILABLE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum NO_PLAY_SERVICE_SUPPORT:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field public static final enum OK:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->OK:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v2, 0x1

    const-string v3, "NO_HINTS_AVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_HINTS_AVAILABLE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v3, 0x2

    const-string v4, "CANCELLED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->CANCELLED:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v4, 0x3

    const-string v5, "NOT_SUPPORTED_HINT_TYPE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NOT_SUPPORTED_HINT_TYPE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v5, 0x4

    const-string v6, "NO_PLAY_SERVICE_SUPPORT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_PLAY_SERVICE_SUPPORT:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->ERROR:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 4
    sget-object v8, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->OK:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_HINTS_AVAILABLE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->CANCELLED:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NOT_SUPPORTED_HINT_TYPE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_PLAY_SERVICE_SUPPORT:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    return-object v0
.end method
