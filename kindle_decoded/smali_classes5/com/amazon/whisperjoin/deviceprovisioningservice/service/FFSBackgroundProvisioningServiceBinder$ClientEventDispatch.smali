.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;
.source "FFSBackgroundProvisioningServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientEventDispatch"
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$1;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException Occurred"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onNext(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)V
    .locals 1

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
