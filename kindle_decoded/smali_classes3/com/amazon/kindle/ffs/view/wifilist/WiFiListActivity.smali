.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;
.super Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.source "WiFiListActivity.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;


# instance fields
.field private bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private final closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->Companion:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;-><init>()V

    .line 90
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 91
    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 92
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    .line 93
    new-instance v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic access$getFfsPlugin$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    return-object p0
.end method

.method public static final synthetic access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    return-object p0
.end method


# virtual methods
.method public cancelPassword()V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->cancelPassword()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.wifilist.WiFiListBottomSheet"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 129
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->invisible_activity:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    new-instance v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    invoke-super {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onDestroy()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->setBundle(Landroid/os/Bundle;)V

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_4

    const-string v0, "WiFiListActivity:statusKey"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "inBundle.getString(STATUS_KEY)!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseArguments with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->access$getPERSISTENT_PARAMETERS$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    sget-object v2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    sget-object v2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.io.Serializable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->setBundle(Landroid/os/Bundle;)V

    .line 144
    sget-object v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->getError(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parseArguments is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->showErrorPopup(Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    goto :goto_1

    .line 133
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseArguments with no statusString"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method

.method protected showBottomsheet()V
    .locals 3

    .line 96
    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    .line 98
    sget-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;

    .line 99
    new-instance v2, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)V

    .line 96
    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public updatePassword(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updatePassword(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.wifilist.WiFiListBottomSheet"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
