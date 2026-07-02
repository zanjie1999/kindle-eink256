.class public Lcom/amazon/whispersync/communication/MessageEnvelope;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/communication/MessageEnvelope;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_INPUT_STREAM:B = 0x1t

.field private static final IS_NOT_INPUT_STREAM:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "TComm.MessageEnvelope"


# instance fields
.field private mMessage:Lamazon/whispersync/communication/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/MessageEnvelope$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/MessageEnvelope$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lamazon/whispersync/communication/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    return-void
.end method

.method private copyDataIntoParcelOrConvertToInputStream(Landroid/os/Parcel;)V
    .locals 9

    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    check-cast v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->getPayloadSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Message payload size is not greater than 0"

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z[Ljava/lang/Object;)V

    const v4, 0x19000

    if-le v1, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->putInputStreamIntoParcel(Landroid/os/Parcel;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->getByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v4, v0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Parcel;->writeByteArray([BII)V

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v6, "Message payload size did not match the number of bytes written"

    aput-object v6, p1, v3

    invoke-static {v1, v5, p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectEquals(II[Ljava/lang/Object;)V

    array-length p1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Did not write the expected number of buffers into the Parcel"

    aput-object v1, v0, v3

    invoke-static {p1, v4, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectEquals(II[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static createInstance(Lamazon/whispersync/communication/Message;)Lcom/amazon/whispersync/communication/MessageEnvelope;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/MessageEnvelope;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/MessageEnvelope;-><init>(Lamazon/whispersync/communication/Message;)V

    return-object v0
.end method

.method private isInputStreamBackedMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    instance-of v0, v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    return v0
.end method

.method private putInputStreamIntoParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    new-instance v0, Lcom/amazon/whispersync/communication/InputStreamProxy;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    invoke-interface {v1}, Lamazon/whispersync/communication/Message;->getPayload()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/InputStreamProxy;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/IInputStream$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toMessage()Lamazon/whispersync/communication/Message;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/whispersync/communication/MessageEnvelope;->mMessage:Lamazon/whispersync/communication/Message;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/MessageEnvelope;->isInputStreamBackedMessage()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->putInputStreamIntoParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->copyDataIntoParcelOrConvertToInputStream(Landroid/os/Parcel;)V

    :goto_0
    return-void
.end method
