.class public final Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerBleGattClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bleCommandExecutorModule:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;)Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;->bleCommandExecutorModule:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperbridge/ble/BleGattClientComponent;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;->bleCommandExecutorModule:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;->bleCommandExecutorModule:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutorModule;

    .line 54
    :cond_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;-><init>(Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$Builder;Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent$1;)V

    return-object v0
.end method
