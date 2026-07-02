.class public final Lcom/amazon/whisperbridge/ble/BleGattClientFactory_MembersInjector;
.super Ljava/lang/Object;
.source "BleGattClientFactory_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperbridge/ble/BleGattClientFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBluetoothGattFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMBluetoothGattFactory(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->mBluetoothGattFactory:Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    return-void
.end method
