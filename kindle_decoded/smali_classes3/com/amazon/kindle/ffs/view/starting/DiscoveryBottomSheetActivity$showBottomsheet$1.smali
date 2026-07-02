.class final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;
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

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;->$flagUGSStarted:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;->invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->access$getDevice$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->onBottomSheetPositiveButtonClick$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;->$flagUGSStarted:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
