.class public Lcom/amazon/kindle/cms/ipc/ItemInfo;
.super Lcom/amazon/kindle/cms/ipc/ItemPayload;
.source "ItemInfo.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ipc/Digestible;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAYLOAD_CODE:B = 0x1t

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

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 219
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfo$2;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->s_contentSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/cms/ipc/ItemInfo$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->readFromPipe(Ljava/io/DataInput;)V

    return-void
.end method


# virtual methods
.method public digest(Lcom/amazon/kindle/cms/ipc/Digest;)V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    sget-object v1, Lcom/amazon/kindle/cms/ipc/ItemInfo;->s_contentSorter:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 53
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/cms/ipc/Digest;->add(I)V

    .line 55
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 57
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/cms/ipc/Digest;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 61
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/cms/ipc/Digest;->add(I)V

    goto :goto_0

    .line 63
    :cond_2
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 65
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/cms/ipc/Digest;->add(Z)V

    goto :goto_0

    .line 67
    :cond_3
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kindle/cms/ipc/Digest;->add(J)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getField(I)Ljava/lang/Object;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getPayloadCode()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPipeCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    .line 121
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 124
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 125
    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/DataSerializer;->readObject(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setField(II)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setField(IJ)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setField(ILjava/util/Date;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToPipe(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfo;->m_fields:Ljava/util/Map;

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

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 146
    invoke-static {v1, p1}, Lcom/amazon/kindle/cms/ipc/DataSerializer;->writeObject(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-byte v0, p0, Lcom/amazon/kindle/cms/ipc/Pipeable;->OBJECT_SEPARATOR:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
