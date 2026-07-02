.class public final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;
.super Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.source "DiscoveryBottomSheetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoveryBottomSheetActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoveryBottomSheetActivity.kt\ncom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity\n*L\n1#1,148:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;


# instance fields
.field private bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private final closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

.field private device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    return-void
.end method

.method public static final synthetic access$getDevice$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "device"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setDevice$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    return-void
.end method


# virtual methods
.method protected getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 54
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->invisible_activity:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance p1, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;

    const-class v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-super {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->updateState()V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.starting.DiscoveryBottomSheet"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, "discoveryBottomSheet:discoveryKey"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v0, :cond_2

    .line 112
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 113
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    const-string v1, "discoveryBottomSheet:statusKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->getStatusFromInt(I)Lcom/amazon/kindle/ffs/view/starting/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->setStatus(Lcom/amazon/kindle/ffs/view/starting/Status;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->updateState()V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.starting.DiscoveryBottomSheet"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;

    const-string v0, "This activity needs a discovered device."

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v1, :cond_1

    const-string v2, "discoveryBottomSheet:discoveryKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    sget-object v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->getIntStatus()I

    move-result v1

    const-string v2, "discoveryBottomSheet:statusKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string p1, "device"

    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "discoveryBottomSheet"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "inBundle?.getBundle(DISC\u2026getIntentWithArguments`\")"

    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryBottomSheet:discoveryKey"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v0, :cond_1

    .line 92
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 93
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    const-string v1, "discoveryBottomSheet:statusKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->getStatusFromInt(I)Lcom/amazon/kindle/ffs/view/starting/Status;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->setStatus(Lcom/amazon/kindle/ffs/view/starting/Status;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 92
    :cond_1
    new-instance p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;

    const-string v0, "This activity needs a discovered device. Use `getIntentWithArguments`"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    new-instance p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;

    const-string v0, "This class needs a bundle. Use `getIntentWithArguments`"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method

.method protected showBottomsheet()V
    .locals 10

    .line 60
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 62
    new-instance v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    .line 64
    iget-object v4, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 v8, 0x0

    const-string v9, "device"

    if-eqz v4, :cond_2

    .line 65
    new-instance v5, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;

    invoke-direct {v5, p0, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$1;-><init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 69
    sget-object v6, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;

    .line 70
    new-instance v7, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;

    invoke-direct {v7, p0, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$3;-><init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object v2, v1

    move-object v3, p0

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 82
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    const-wide/32 v1, 0x1d4c0

    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->startTimeout(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 83
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->keepDiscoveryScreenReference()V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8
.end method
