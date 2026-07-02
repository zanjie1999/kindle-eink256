.class final Lcom/amazon/whispersync/communication/MessageEnvelope$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/MessageEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/MessageEnvelope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFromByteArrayParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;
    .locals 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    array-length v8, v7

    add-int/2addr v8, v4

    if-gt v8, v0, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v9, "Received more data than expected from a Parcel"

    aput-object v9, v6, v3

    invoke-static {v8, v6}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z[Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v2, v5

    array-length v6, v7

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v6, [Ljava/lang/Object;

    const-string v7, "Expected message size did not match total number of bytes read"

    aput-object v7, p1, v3

    invoke-static {v0, v4, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectEquals(II[Ljava/lang/Object;)V

    new-array p1, v6, [Ljava/lang/Object;

    const-string v0, "Did not read the expected number of buffers from the parcel"

    aput-object v0, p1, v3

    invoke-static {v1, v5, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectEquals(II[Ljava/lang/Object;)V

    new-instance p1, Lcom/amazon/whispersync/communication/MessageEnvelope;

    invoke-static {v2}, Lamazon/whispersync/communication/MessageFactory;->createMessage([Ljava/nio/ByteBuffer;)Lamazon/whispersync/communication/Message;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/MessageEnvelope;-><init>(Lamazon/whispersync/communication/Message;)V

    return-object p1
.end method

.method private createFromInputStreamParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/communication/LargeArrayOptimizedIInputStream;->makeIInputStream(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IInputStream;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/communication/MessageEnvelope;

    new-instance v1, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;-><init>(Lcom/amazon/whispersync/communication/IInputStream;)V

    invoke-static {v1}, Lamazon/whispersync/communication/MessageFactory;->createMessage(Ljava/io/InputStream;)Lamazon/whispersync/communication/Message;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;-><init>(Lamazon/whispersync/communication/Message;)V

    return-object v0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope$1;->createFromInputStreamParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope$1;->createFromByteArrayParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/MessageEnvelope;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/MessageEnvelope;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope$1;->newArray(I)[Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    return-object p1
.end method
