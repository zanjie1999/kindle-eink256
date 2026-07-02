.class public final Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;
.super Ljava/lang/Object;
.source "GattClientModule_ProvideBluetoothGattFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperbridge/ble/GattClientModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/ble/GattClientModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;->module:Lcom/amazon/whisperbridge/ble/GattClientModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperbridge/ble/GattClientModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperbridge/ble/GattClientModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;-><init>(Lcom/amazon/whisperbridge/ble/GattClientModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;->module:Lcom/amazon/whisperbridge/ble/GattClientModule;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/GattClientModule;->provideBluetoothGattFactory()Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;->get()Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    move-result-object v0

    return-object v0
.end method
