.class public final Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->startDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter\n*L\n1#1,148:1\n220#2,4:149\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;->this$0:Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1$lambda$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1$lambda$1;-><init>(Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter$startDiscovery$$inlined$timerTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
