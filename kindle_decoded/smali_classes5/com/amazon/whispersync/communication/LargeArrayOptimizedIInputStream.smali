.class public Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/communication/IInputStream;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.communication.IInputStream"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static sIsOptimizedReadMethodAvailable:Z

.field private static sOptimizedReadMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mRemote:Landroid/os/IBinder;

.field private final mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.LargeArrayOptimizedIInputStream"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sOptimizedReadMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sIsOptimizedReadMethodAvailable:Z

    :try_start_0
    const-class v1, Landroid/os/Parcel;

    const-string/jumbo v2, "readByteArray"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [B

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sOptimizedReadMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sIsOptimizedReadMethodAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "static"

    const-string v3, "Could not find optimized Parcel.readByteArray(byte[], int, int) method"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Lcom/amazon/whispersync/communication/IInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mRemote:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    return-void
.end method

.method protected static isOptimizedReadMethodAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sIsOptimizedReadMethodAvailable:Z

    return v0
.end method

.method public static makeIInputStream(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IInputStream;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.communication.IInputStream"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/whispersync/communication/IInputStream;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/whispersync/communication/IInputStream;

    return-object v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;

    invoke-static {p0}, Lcom/amazon/whispersync/communication/IInputStream$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IInputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;-><init>(Landroid/os/IBinder;Lcom/amazon/whispersync/communication/IInputStream;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->close()Z

    move-result v0

    return v0
.end method

.method public readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->readByte()I

    move-result v0

    return v0
.end method

.method public readBytes([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/communication/IInputStream;->readBytes([B)I

    move-result p1

    return p1
.end method

.method public readBytesIntoOffset([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->isOptimizedReadMethodAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "com.amazon.whispersync.communication.IInputStream"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const/4 v6, 0x3

    :try_start_1
    sget-object v7, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->sOptimizedReadMethod:Ljava/lang/reflect/Method;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v3, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v7, "readBytesIntoOffset"

    const-string v8, "error invoking bulk read method via reflection"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "offset"

    aput-object v10, v9, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, v5

    const-string p2, "length"

    aput-object p2, v9, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, v6

    const/4 p2, 0x4

    aput-object p1, v9, p2

    invoke-virtual {v3, v7, v8, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Error invoking optimized read method"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->mStandardImplementation:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/communication/IInputStream;->readBytesIntoOffset([BII)I

    move-result v3

    :goto_0
    return v3
.end method
