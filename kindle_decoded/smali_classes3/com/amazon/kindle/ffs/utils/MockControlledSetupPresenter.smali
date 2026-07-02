.class public final Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;
.source "DevelopmentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevelopmentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/MockControlledSetupPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n1657#2,3:226\n*E\n*S KotlinDebug\n*F\n+ 1 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/MockControlledSetupPresenter\n*L\n190#1,3:226\n*E\n"
.end annotation


# instance fields
.field public mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

.field private terminated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workflowConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->terminated:Z

    return-void
.end method


# virtual methods
.method public attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    return-void
.end method

.method public bridge synthetic attachView(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V

    return-void
.end method

.method public chooseDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 3

    .line 183
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$chooseDevice$$inlined$timerTask$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$chooseDevice$$inlined$timerTask$1;-><init>(Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public discoverDevices()V
    .locals 4

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->terminated:Z

    .line 173
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$discoverDevices$$inlined$timerTask$1;-><init>(Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final getMPresenterView()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

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

    .line 169
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->terminated:Z

    return v0
.end method

.method public provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)V
    .locals 10

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 189
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->DISCOVERING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v3, 0x3

    aput-object v0, p1, v3

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v3, 0x4

    aput-object v0, p1, v3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x5dc

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 191
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v7, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$provisionDevice$$inlined$forEachIndexed$lambda$1;

    invoke-direct {v7, v3, p0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$provisionDevice$$inlined$forEachIndexed$lambda$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;)V

    int-to-long v8, v6

    mul-long v8, v8, v4

    invoke-virtual {v1, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    move v1, v6

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    .line 195
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$provisionDevice$$inlined$timerTask$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter$provisionDevice$$inlined$timerTask$1;-><init>(Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;)V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v2

    int-to-long v2, p1

    mul-long v2, v2, v4

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final setMPresenterView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->mPresenterView:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    return-void
.end method

.method public final setTerminated(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->terminated:Z

    return-void
.end method

.method public terminateSetup()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;->terminated:Z

    return-void
.end method
