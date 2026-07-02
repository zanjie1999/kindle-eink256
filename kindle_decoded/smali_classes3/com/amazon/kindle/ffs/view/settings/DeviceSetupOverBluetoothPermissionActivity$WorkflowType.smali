.class public final enum Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;
.super Ljava/lang/Enum;
.source "PermissionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkflowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

.field public static final enum Ask:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

.field public static final enum Rationale:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    new-instance v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    const/4 v2, 0x0

    const-string v3, "Ask"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Ask:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    const/4 v2, 0x1

    const-string v3, "Rationale"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Rationale:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->$VALUES:[Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->$VALUES:[Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    return-object v0
.end method
