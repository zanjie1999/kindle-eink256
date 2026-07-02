.class public final Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;
.super Lcom/amazon/kindle/cms/ipc/ItemPayload;
.source "ItemSimilaritiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAYLOAD_CODE:I = 0x2


# instance fields
.field private m_entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->m_entries:Ljava/util/LinkedHashMap;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->readFromPipe(Ljava/io/DataInput;)V

    return-void
.end method


# virtual methods
.method getPayloadCode()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->m_entries:Ljava/util/LinkedHashMap;

    .line 94
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;-><init>(Ljava/io/DataInput;)V

    .line 99
    iget-object v4, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->m_entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToPipe(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->m_entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;->m_entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo$Entry;->writeToPipe(Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    return-void
.end method
