.class public final Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->discoverDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/MockControlledSetupPresenter\n*L\n1#1,148:1\n174#2,2:149\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->getMPresenterView()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockDiscoveredDevicesViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showDiscoveredDevices(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V

    :cond_0
    return-void
.end method
