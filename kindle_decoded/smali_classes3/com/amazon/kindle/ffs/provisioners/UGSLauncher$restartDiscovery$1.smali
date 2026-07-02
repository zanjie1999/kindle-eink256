.class final Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UGSLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->restartDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getFfsPlugin$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->canStartUGSProvisioner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->startDiscovery()V

    :cond_0
    return-void
.end method
