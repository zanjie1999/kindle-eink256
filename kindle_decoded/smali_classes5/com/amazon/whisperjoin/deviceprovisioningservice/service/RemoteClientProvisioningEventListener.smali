.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;
.super Ljava/lang/Object;
.source "RemoteClientProvisioningEventListener.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteClientProvisioningEventListener"


# instance fields
.field private final mClientListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;->mClientListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;->mClientListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onNext(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException Occurred"

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
