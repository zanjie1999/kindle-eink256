.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

.field public static final enum ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

.field public static final enum IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

.field public static final enum IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

.field public static final enum SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

.field public static final enum UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 6
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x1

    const-string v3, "IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 7
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v3, 0x2

    const-string v4, "UPDATE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 4
    sget-object v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    return-object v0
.end method
