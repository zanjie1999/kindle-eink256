.class public final enum Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

.field public static final enum EMAIL:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

.field public static final enum NAME:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

.field public static final enum PHONE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    const/4 v1, 0x0

    const-string v2, "NAME"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->NAME:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    const/4 v2, 0x1

    const-string v3, "EMAIL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->EMAIL:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    const/4 v3, 0x2

    const-string v4, "PHONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->PHONE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    .line 98
    sget-object v5, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->NAME:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->EMAIL:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;
    .locals 1

    .line 98
    const-class v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;

    return-object v0
.end method
