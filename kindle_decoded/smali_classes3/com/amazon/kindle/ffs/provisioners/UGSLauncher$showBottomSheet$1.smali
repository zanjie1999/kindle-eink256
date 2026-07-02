.class final Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UGSLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->showBottomSheet$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
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
.field final synthetic $device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->showBottomSheet$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void
.end method
