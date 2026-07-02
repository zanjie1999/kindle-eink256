.class public final Lcom/amazon/kindle/ffs/utils/FfsHelperImpl;
.super Ljava/lang/Object;
.source "FfsHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/utils/FfsHelper;


# instance fields
.field private isEarlyAccessBuild:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FfsHelperImpl$isEarlyAccessBuild$1;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FfsHelperImpl$isEarlyAccessBuild$1;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/utils/FfsHelperImpl;->isEarlyAccessBuild:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic isEarlyAccessBuild$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public activateFFS()V
    .locals 2

    .line 26
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->setFFSSharedPreferencesValue(Z)V

    .line 27
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provision()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    :cond_0
    return-void
.end method

.method public deactivateFFS()V
    .locals 2

    .line 34
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->setFFSSharedPreferencesValue(Z)V

    .line 35
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->stop()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    :cond_0
    return-void
.end method

.method public getFFSSharedPreferencesString()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE_SETUP_OVER_BLUETOOTH"

    return-object v0
.end method

.method public isDeviceSetupOverBluetoothEnabled()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->getFFSSharedPreferencesValue()Z

    move-result v0

    return v0
.end method

.method public final isEarlyAccessBuild$ffs_debug()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/FfsHelperImpl;->isEarlyAccessBuild:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setEarlyAccessBuild$ffs_debug(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/FfsHelperImpl;->isEarlyAccessBuild:Lkotlin/jvm/functions/Function0;

    return-void
.end method
