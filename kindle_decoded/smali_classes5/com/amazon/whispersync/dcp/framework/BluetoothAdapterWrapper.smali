.class public Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "BluetoothAdapterWrapper.java"


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.BluetoothAdapterWrapper"


# instance fields
.field private mInner:Landroid/bluetooth/BluetoothAdapter;

.field private mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public static getDefaultAdapter()Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Provides;
    .end annotation

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method

.method public disable()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getConnectionState"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Custom BluetoothAdapter method: getConnectionState does not exist, default to DISCONNECTED"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public getScanMode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public isDiscovering()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startDiscovery()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BluetoothAdapterWrapper;->mInner:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method
