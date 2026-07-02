.class public final Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;
.super Ljava/lang/Object;
.source "DaggerBleGattClientFactoryComponent.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;
    }
.end annotation


# instance fields
.field private provideBluetoothGattFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;->initialize(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)V

    return-void
.end method

.method public static create()Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$1;)V

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;->build()Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;->access$100(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)Lcom/amazon/whisperbridge/ble/GattClientModule;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/GattClientModule_ProvideBluetoothGattFactoryFactory;->create(Lcom/amazon/whisperbridge/ble/GattClientModule;)Ldagger/internal/Factory;

    move-result-object p1

    .line 26
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;->provideBluetoothGattFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectBleGattClientFactory(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;)Lcom/amazon/whisperbridge/ble/BleGattClientFactory;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;->provideBluetoothGattFactoryProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    .line 36
    invoke-static {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattClientFactory_MembersInjector;->injectMBluetoothGattFactory(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;->injectBleGattClientFactory(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;)Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

    return-void
.end method
