.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "WiFiListBottomSheet.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWiFiListBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WiFiListBottomSheet.kt\ncom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,470:1\n1648#2,2:471\n1648#2,2:473\n*E\n*S KotlinDebug\n*F\n+ 1 WiFiListBottomSheet.kt\ncom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet\n*L\n381#1,2:471\n385#1,2:473\n*E\n"
.end annotation


# instance fields
.field private final activity:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

.field private actualStatus:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

.field private connectingTo:Ljava/lang/String;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private hidePasswordChecked:Z

.field private knownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private lastUsedConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private mKnownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

.field private final mKnownWifiNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

.field private final mUnknownWifiNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final negativeButtonListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

.field private final onDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field private saveToLockerChecked:Z

.field private final ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

.field private unknownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private updateBroadcastReceiver:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;

.field private userProvidedPassword:Ljava/lang/String;

.field private final view:Landroid/view/View;

.field private wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativeButtonListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/amazon/kindle/ffs/R$style;->BottomSheetDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->activity:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->negativeButtonListener:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ffs/R$layout;->wifi_list_bottom_sheet:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->view:Landroid/view/View;

    .line 54
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 56
    sget-object p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    .line 57
    new-instance p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateBroadcastReceiver:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;

    .line 61
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->SCANNING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->actualStatus:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    .line 96
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string p3, "This is the init"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->createListAdapter(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    .line 101
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->createListAdapter(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    .line 105
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->view:Landroid/view/View;

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setContentView(Landroid/view/View;)V

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3
.end method

.method public static final synthetic access$getLogger$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method public static final synthetic access$getNegativeButtonListener$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->negativeButtonListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getNetworkBeingConnected$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lcom/amazon/kindle/ffs/model/WifiNetwork;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    return-object p0
.end method

.method public static final synthetic access$getOnDismiss$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    return-object p0
.end method

.method public static final synthetic access$knownNetworkClicked(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->knownNetworkClicked(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    return-void
.end method

.method public static final synthetic access$setLogger$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static final synthetic access$setNetworkBeingConnected$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    return-void
.end method

.method public static final synthetic access$unknownNetworkClicked(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->unknownNetworkClicked(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    return-void
.end method

.method private final connectToNetwork(Lcom/amazon/kindle/ffs/model/WifiNetwork;Z)V
    .locals 4

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->lastUsedConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 113
    iput-boolean p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->saveToLockerChecked:Z

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToNetwork configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->selectNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final createListAdapter(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private final disableAllNetworksButOne(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    .line 471
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 382
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 383
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->setDisabled(Z)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 386
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 387
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->setDisabled(Z)V

    goto :goto_1

    .line 390
    :cond_1
    sget p1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateLists()V

    return-void
.end method

.method private final findNetworkItemBySSID(Ljava/lang/String;)Lcom/amazon/kindle/ffs/model/WifiNetwork;
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 338
    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 341
    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getDialogWithTag(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->activity:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final isDialogWithTagOpen(Ljava/lang/String;)Z
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->getDialogWithTag(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final knownNetworkClicked(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "knownNetworkClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setUserProvidedPassword(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 404
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->connectToNetwork(Lcom/amazon/kindle/ffs/model/WifiNetwork;Z)V

    return-void
.end method

.method private final requestPassword(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 8

    .line 276
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getKeyManagement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->requestPassword(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final requestPassword(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 280
    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;-><init>()V

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "networkName"

    .line 283
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "networkKeyManagement"

    .line 284
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "saveWifiToLocker"

    .line 285
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "disableSaveWifiToLocker"

    .line 286
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "isError"

    .line 287
    invoke-virtual {v1, p1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-boolean p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->hidePasswordChecked:Z

    const-string p2, "hidePasswordCheck"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_1

    .line 289
    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-nez p3, :cond_2

    const-string p3, "description"

    .line 290
    invoke-virtual {v1, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p6, :cond_3

    .line 292
    invoke-static {p6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 p1, 0x1

    :cond_4
    if-nez p1, :cond_5

    const-string p1, "password"

    .line 293
    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 297
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->activity:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "WiFiListBottomSheet::passwordDialog"

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final setNetworksFromViewModel()V
    .locals 9

    .line 348
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetworksFromViewModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "wifi"

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    add-int/2addr v3, v7

    .line 358
    new-instance v8, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v5, v3, v0, v7}, Lcom/amazon/kindle/ffs/model/WifiNetwork;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;IIZ)V

    .line 360
    iget-object v5, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getUnrecognizedNetworks()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getUnrecognizedNetworks()Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    add-int/2addr v3, v7

    .line 369
    new-instance v5, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v3, v0, v2}, Lcom/amazon/kindle/ffs/model/WifiNetwork;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;IIZ)V

    .line 371
    iget-object v4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 374
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateLists()V

    return-void

    .line 367
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 365
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 356
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 354
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4
.end method

.method private final setUserProvidedPassword(Ljava/lang/String;)V
    .locals 2

    .line 462
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->userProvidedPassword:Ljava/lang/String;

    const-string v0, "WiFiListActivity:userProvidedPassword"

    if-nez p1, :cond_0

    .line 464
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_0
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->userProvidedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final unknownNetworkClicked(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknownNetworkClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 259
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectingToOtherNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setUserProvidedPassword(Ljava/lang/String;)V

    .line 264
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 266
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->requestPassword(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network.configuration"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "NONE"

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->generateWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->setConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    .line 271
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->connectToNetwork(Lcom/amazon/kindle/ffs/model/WifiNetwork;Z)V

    :goto_1
    return-void
.end method

.method private final updateLists()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateLists"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget v0, Lcom/amazon/kindle/ffs/R$id;->known_networks_header:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v1, :cond_0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/ffs/R$id;->unknown_networks_header:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 320
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public cancelPassword()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 458
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setUserProvidedPassword(Ljava/lang/String;)V

    return-void
.end method

.method public final getMKnownWifiNamesList$ffs_debug()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownWifiNamesList:Ljava/util/List;

    return-object v0
.end method

.method public final getMUnknownWifiNamesList$ffs_debug()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownWifiNamesList:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 416
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 417
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateBroadcastReceiver:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "FFS_WIFI_LIST_STATE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateViewFromBundle()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 408
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onStart()V

    .line 411
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "behavior"

    .line 412
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 411
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStop()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateBroadcastReceiver:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 424
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContentView"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget v0, Lcom/amazon/kindle/ffs/R$id;->known_networks_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->knownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 432
    sget v0, Lcom/amazon/kindle/ffs/R$id;->unknown_networks_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->unknownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 434
    sget v0, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :cond_0
    sget v0, Lcom/amazon/kindle/ffs/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$3;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateViewFromBundle()V

    return-void

    .line 432
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 431
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public updatePassword(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setUserProvidedPassword(Ljava/lang/String;)V

    .line 449
    iput-boolean p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->saveToLockerChecked:Z

    .line 450
    iput-boolean p4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->hidePasswordChecked:Z

    .line 451
    sget-object p2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    iget-boolean p4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->saveToLockerChecked:Z

    const-string v0, "WiFiListActivity:saveToLockerChecked"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    sget-object p2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    iget-boolean p4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->hidePasswordChecked:Z

    const-string v0, "WiFiListActivity:hidePasswordChecked"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    iget-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {p2, p1, p3}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->selectNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V

    return-void
.end method

.method public final updateViewFromBundle()V
    .locals 11

    .line 119
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I\'m trying to updateViewFromBundle but there\'s no bundle"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating view from bundle with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v4}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_2d

    const-string v5, "WiFiListState.bundle.getString(STATUS_KEY)!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "WiFiListActivity:saveToLockerChecked"

    .line 126
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->saveToLockerChecked:Z

    const-string v2, "WiFiListActivity:hidePasswordChecked"

    .line 127
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->hidePasswordChecked:Z

    const-string v2, "WiFiListActivity:userProvidedPassword"

    .line 128
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->userProvidedPassword:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v2, "bundle.getString(STATUS_KEY)!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v2, 0x8

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-eq v1, v9, :cond_24

    const/4 v4, 0x2

    const-string v5, "WiFiListActivity:viewModel"

    if-eq v1, v4, :cond_20

    const/4 v4, 0x3

    if-eq v1, v4, :cond_19

    const/4 v4, 0x4

    const-string v6, "wifi"

    const-string v7, "wifiConnectionErrorViewModel!!.wifiConnectionError"

    const-string v10, "WiFiListBottomSheet::passwordDialog"

    if-eq v1, v4, :cond_11

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto/16 :goto_6

    .line 210
    :cond_1
    sget v1, Lcom/amazon/kindle/ffs/R$id;->center_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_2
    sget v1, Lcom/amazon/kindle/ffs/R$id;->scanning_progress_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_3
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :cond_4
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_10

    .line 215
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 217
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setNetworksFromViewModel()V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    if-nez v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->findNetworkItemBySSID(Ljava/lang/String;)Lcom/amazon/kindle/ffs/model/WifiNetwork;

    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 224
    :cond_6
    invoke-direct {p0, v10}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->isDialogWithTagOpen(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getAttemptedWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getKnown()Z

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->saveToLockerChecked:Z

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v4, 0x1

    .line 228
    :goto_3
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getKnown()Z

    move-result v1

    move v5, v1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    .line 229
    :goto_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->userProvidedPassword:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v3, 0x1

    :cond_c
    if-eqz v3, :cond_d

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_incorrect_saved_password:I

    goto :goto_5

    :cond_d
    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_incorrect_entered_password:I

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "context.resources.getStr\u2026correct_entered_password)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi.ssid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->userProvidedPassword:Ljava/lang/String;

    const/4 v10, 0x1

    move-object v0, p0

    move v3, v4

    move v4, v5

    move-object v5, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->requestPassword(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 225
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 233
    :cond_f
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not showing password dialog because one already exists"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 215
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 178
    :cond_11
    iput-object v8, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 180
    sget v1, Lcom/amazon/kindle/ffs/R$id;->center_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_12
    sget v1, Lcom/amazon/kindle/ffs/R$id;->scanning_progress_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_13
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :cond_14
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_18

    .line 185
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 187
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setNetworksFromViewModel()V

    const-string v0, "WiFiListBottomSheet::errorDialog"

    .line 189
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->isDialogWithTagOpen(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 191
    invoke-direct {p0, v10}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->getDialogWithTag(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 192
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 194
    :cond_15
    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;-><init>()V

    .line 196
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 197
    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->wifiConnectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getAttemptedWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v3

    .line 198
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    sget-object v3, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->getSaveWiFiToLocker$ffs_debug()Z

    move-result v3

    const-string v4, "saveToLocker"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 203
    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "showing dialog"

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->activity:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 197
    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 206
    :cond_17
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not showing error dialog because one already exists"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 185
    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 152
    :cond_19
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WifiListActivity::CONNECTING"

    invoke-interface {v1, v4, v6}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget v1, Lcom/amazon/kindle/ffs/R$id;->center_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_1a
    sget v1, Lcom/amazon/kindle/ffs/R$id;->scanning_progress_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_1b
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :cond_1c
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    iput-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    const-string v1, "WiFiListActivity:connectingTo"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "bundle.getString(CONNECTING_TO_KEY)!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    :cond_1d
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setNetworksFromViewModel()V

    .line 164
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->findNetworkItemBySSID(Ljava/lang/String;)Lcom/amazon/kindle/ffs/model/WifiNetwork;

    move-result-object v1

    .line 166
    iput-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 168
    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectingToItem != null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    .line 171
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->connectingTo:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v9}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->setConnecting(Z)V

    .line 173
    invoke-direct {p0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->disableAllNetworksButOne(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    .line 174
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateLists()V

    goto :goto_6

    .line 158
    :cond_1f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 139
    :cond_20
    sget v1, Lcom/amazon/kindle/ffs/R$id;->center_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_21
    sget v1, Lcom/amazon/kindle/ffs/R$id;->scanning_progress_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_22
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_23

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :cond_23
    iput-object v8, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 145
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 147
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setNetworksFromViewModel()V

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ffs/R$id;->header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_6

    .line 132
    :cond_24
    iput-object v8, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->networkBeingConnected:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 134
    sget v0, Lcom/amazon/kindle/ffs/R$id;->center_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_25
    sget v0, Lcom/amazon/kindle/ffs/R$id;->scanning_progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_26
    sget v0, Lcom/amazon/kindle/ffs/R$id;->rescan_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_27

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    :cond_27
    :goto_6
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->knownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "knownWifiRecyclerView"

    if-eqz v0, :cond_2b

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->unknownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "unknownWifiRecyclerView"

    if-eqz v0, :cond_2a

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->knownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mKnownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    invoke-virtual {v0, v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->unknownWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->mUnknownListAdapter:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;

    invoke-virtual {v0, v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void

    :cond_28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 241
    :cond_29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 239
    :cond_2a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 238
    :cond_2b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 130
    :cond_2c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8

    .line 123
    :cond_2d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v8
.end method
