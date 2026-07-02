.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$3;
.super Ljava/lang/Object;
.source "ControlledSetupWorkflow.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->recordBarcodePossesionIntentIfExists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 301
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePossessionIntent for 2D Barcode completed."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 306
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in recording DevicePossessionIntent for 2D barcode."

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
