.class public final Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;
.super Ljava/lang/Object;
.source "ZTSProvisioner.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProvisioningServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->access$getLogger$p(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provisioning service connected"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->setMService(Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->access$getLogger$p(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Provisioning service active"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->setMService(Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;->this$0:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->access$getLogger$p(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provisioning service disconnected"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
