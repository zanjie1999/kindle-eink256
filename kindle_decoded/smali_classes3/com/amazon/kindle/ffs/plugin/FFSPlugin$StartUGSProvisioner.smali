.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;
.super Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;
.source "FFSPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartUGSProvisioner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V

    return-void
.end method


# virtual methods
.method public canStartProvisioner()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->canStartUGSProvisioner()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reTry()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->reTry()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;

    move-result-object v0

    return-object v0
.end method

.method public reTry()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;
    .locals 4

    .line 338
    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->getPromise()Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->getAttempt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V

    return-object v0
.end method

.method public startProvisioner()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting UGS provision"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->startDiscovery()V

    .line 334
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->getPromise()Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$get_ugsProvisioningStarted$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
