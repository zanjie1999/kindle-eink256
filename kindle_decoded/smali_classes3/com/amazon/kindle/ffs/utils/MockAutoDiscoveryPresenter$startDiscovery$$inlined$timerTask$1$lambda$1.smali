.class final Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1$lambda$1;
.super Ljava/lang/Object;
.source "DevelopmentUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1$lambda$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1$lambda$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->getMPresenterView()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockDiscoveredDevicesViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;->showDevicesForControlledSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V

    return-void
.end method
