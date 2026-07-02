.class final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DiscoveryBottomSheetActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $flagUGSStarted:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->$flagUGSStarted:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->$flagUGSStarted:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_1

    .line 74
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "FFS_UGS_DISCOVERED_BUT_CANCELLED"

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 77
    :cond_0
    sget-object p1, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->access$getDevice$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->show(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
