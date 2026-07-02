.class public final Lcom/amazon/whisperbridge/ble/BleGattClient_MembersInjector;
.super Ljava/lang/Object;
.source "BleGattClient_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperbridge/ble/BleGattClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClientCommandExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMClientCommandExecutor(Lcom/amazon/whisperbridge/ble/BleGattClient;Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    return-void
.end method
