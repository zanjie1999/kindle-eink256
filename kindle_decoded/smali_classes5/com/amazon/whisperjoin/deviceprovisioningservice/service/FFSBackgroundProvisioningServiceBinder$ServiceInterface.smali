.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub;
.source "FFSBackgroundProvisioningServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceInterface"
.end annotation


# instance fields
.field final mBinderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "addCallback"

    .line 249
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 255
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->setListener(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 259
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 260
    throw p1
.end method

.method public isActive()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isServiceRunning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    .line 223
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->isServiceRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 225
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    const-string v2, "isActive"

    invoke-static {v1, v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 226
    throw v0
.end method

.method public removeCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p1, "removeCallback"

    .line 267
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 273
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;->setListener(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 277
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 278
    throw v0
.end method

.method public shutdown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "shutdown"

    .line 285
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 294
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v2, v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 295
    throw v1
.end method

.method public start(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "start"

    .line 234
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 239
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1, p1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 242
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;->mBinderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {v1, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 243
    throw p1
.end method
