.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;
.super Ljava/lang/Enum;
.source "ControllerUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum BACKING_OFF:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum DISCOVERY_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum DISCOVERY_STOPPED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum TERMINATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum WORKFLOW_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum WORKFLOW_SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field public static final enum WORKFLOW_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v1, 0x0

    const-string v2, "DISCOVERY_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->DISCOVERY_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v2, 0x1

    const-string v3, "WORKFLOW_STARTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v3, 0x2

    const-string v4, "WORKFLOW_UPDATE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v4, 0x3

    const-string v5, "WORKFLOW_SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v5, 0x4

    const-string v6, "WORKFLOW_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v6, 0x5

    const-string v7, "DISCOVERY_STOPPED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->DISCOVERY_STOPPED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v7, 0x6

    const-string v8, "BACKING_OFF"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->BACKING_OFF:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v8, 0x7

    const-string v9, "TERMINATED"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->TERMINATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 9
    sget-object v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->DISCOVERY_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_STARTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->DISCOVERY_STOPPED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->BACKING_OFF:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    return-object v0
.end method
