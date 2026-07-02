.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;
.super Ljava/lang/Enum;
.source "ZeroTouchWorkflowUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkflowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

.field public static final enum PHILIPS_ZIGBEE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

.field public static final enum WSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    const/4 v1, 0x0

    const-string v2, "WSS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->WSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    const/4 v2, 0x1

    const-string v3, "PHILIPS_ZIGBEE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->PHILIPS_ZIGBEE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    .line 26
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->WSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    return-object v0
.end method
