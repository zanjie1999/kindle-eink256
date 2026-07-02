.class final Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;
.super Ljava/lang/Object;
.source "FFSItemsProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->createDeviceSetupOverBluetoothItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;->this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;->this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->access$isDeviceSetupOverBluetoothToggleItemOn(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;Landroid/content/Context;)Z

    move-result v0

    .line 172
    sget-object v1, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->Companion:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;->getLastTimeIsOn()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 173
    sget-object v1, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->Companion:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;->setLastTimeIsOn(Z)V

    .line 175
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;->INSTANCE:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
