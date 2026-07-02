.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StopProvisioners"
.end annotation


# instance fields
.field private final promiseUGS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final promiseZTS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;Lcom/amazon/kindle/ffs/utils/BlockingPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "promiseZTS"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promiseUGS"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->promiseZTS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->promiseUGS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 346
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getZtsProvisioner$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->stopProvisioning()V

    .line 348
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->stopDiscovery()V

    .line 349
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    .line 350
    sget-object v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeAllUGSActivities(Landroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->promiseZTS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;->promiseUGS:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    return-void
.end method
