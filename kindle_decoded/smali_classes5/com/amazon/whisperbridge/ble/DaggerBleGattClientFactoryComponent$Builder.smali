.class public final Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerBleGattClientFactoryComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private gattClientModule:Lcom/amazon/whisperbridge/ble/GattClientModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;)Lcom/amazon/whisperbridge/ble/GattClientModule;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;->gattClientModule:Lcom/amazon/whisperbridge/ble/GattClientModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;->gattClientModule:Lcom/amazon/whisperbridge/ble/GattClientModule;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amazon/whisperbridge/ble/GattClientModule;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/GattClientModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;->gattClientModule:Lcom/amazon/whisperbridge/ble/GattClientModule;

    .line 50
    :cond_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$Builder;Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent$1;)V

    return-object v0
.end method
