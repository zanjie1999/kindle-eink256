.class public final Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;
.super Lcom/amazon/kindle/cms/ipc/ItemPayload;
.source "ItemInfoGroup.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/cms/ipc/ItemPayload;",
        "Ljava/lang/Iterable<",
        "Lcom/amazon/kindle/cms/ipc/ItemPayload;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAYLOAD_CODE:B = 0x4t


# instance fields
.field private m_infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cms/ipc/ItemPayload;",
            ">;"
        }
    .end annotation
.end field

.field private m_libraryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 35
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

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->readFromPipe(Ljava/io/DataInput;)V

    return-void
.end method


# virtual methods
.method public getPayloadCode()B
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/cms/ipc/ItemPayload;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_libraryId:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 88
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 91
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    new-instance v3, Lcom/amazon/kindle/cms/ipc/ItemInfo;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_3
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

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_libraryId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;->m_infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/ipc/ItemPayload;

    .line 124
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/ipc/ItemPayload;->getPayloadCode()B

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 125
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;->writeToPipe(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-byte v0, p0, Lcom/amazon/kindle/cms/ipc/Pipeable;->OBJECT_SEPARATOR:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
