.class public final Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
.source "DevelopmentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevelopmentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter\n*L\n1#1,225:1\n*E\n"
.end annotation


# instance fields
.field public mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

.field private terminated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provisioningServiceConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->terminated:Z

    return-void
.end method


# virtual methods
.method public attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    return-void
.end method

.method public bridge synthetic attachView(Ljava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V

    return-void
.end method

.method public final getMPresenterView()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mPresenterView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTerminated()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->terminated:Z

    return v0
.end method

.method public final setMPresenterView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    return-void
.end method

.method public final setTerminated(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->terminated:Z

    return-void
.end method

.method public startDiscovery()V
    .locals 4

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->terminated:Z

    .line 219
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;-><init>(Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
