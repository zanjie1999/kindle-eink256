.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;
.super Ljava/lang/Exception;
.source "ConnectToDeviceOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionOperationError"
.end annotation


# instance fields
.field private final mConnectionStatusUpdate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

.field private final mFailureCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->mFailureCause:Ljava/lang/Throwable;

    .line 129
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->mConnectionStatusUpdate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    return-void
.end method


# virtual methods
.method public getConnectionStatusUpdate()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->mConnectionStatusUpdate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    return-object v0
.end method

.method public getFailureCause()Ljava/lang/Throwable;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->mFailureCause:Ljava/lang/Throwable;

    return-object v0
.end method
