.class final Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;
.super Ljava/lang/Object;
.source "FFSItemsProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;->INSTANCE:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 176
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;

    const-string v2, "DEVICE_SETUP_OVER_BLUETOOTH"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->publishFFSSettingsEvent(Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method
