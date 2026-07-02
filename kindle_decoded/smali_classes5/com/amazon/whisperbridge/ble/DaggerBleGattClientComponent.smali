.class public final Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;
.super Ljava/lang/Object;
.source "DaggerBleGattClientComponent.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BleGattClientComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;
    }
.end annotation


# instance fields
.field private provideCommandExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;->initialize(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)V

    return-void
.end method

.method public static create()Lcom/amazon/whisperbridge/ble/BleGattClientComponent;
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$1;)V

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;->build()Lcom/amazon/whisperbridge/ble/BleGattClientComponent;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;->access$100(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule_ProvideCommandExecutorFactory;->create(Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;)Ldagger/internal/Factory;

    move-result-object p1

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectBleGattClient(Lcom/amazon/whisperbridge/ble/BleGattClient;)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;->provideCommandExecutorProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    .line 40
    invoke-static {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattClient_MembersInjector;->injectMClientCommandExecutor(Lcom/amazon/whisperbridge/ble/BleGattClient;Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperbridge/ble/BleGattClient;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;->injectBleGattClient(Lcom/amazon/whisperbridge/ble/BleGattClient;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    return-void
.end method
