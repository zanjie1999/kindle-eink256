.class public final Lcom/amazon/kindle/cms/ipc/MLTItemInfo;
.super Lcom/amazon/kindle/cms/ipc/ItemPayload;
.source "MLTItemInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/MLTItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAYLOAD_CODE:B = 0x3t

.field private static final s_contentSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo$2;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->s_contentSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->m_fields:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/cms/ipc/MLTItemInfo$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->readFromPipe(Ljava/io/DataInput;)V

    return-void
.end method


# virtual methods
.method getPayloadCode()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPipeCode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->m_fields:Ljava/util/Map;

    .line 81
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 85
    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/DataSerializer;->readObject(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public writeToPipe(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->m_fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;->m_fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-static {v1, p1}, Lcom/amazon/kindle/cms/ipc/DataSerializer;->writeObject(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-byte v0, p0, Lcom/amazon/kindle/cms/ipc/Pipeable;->OBJECT_SEPARATOR:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
