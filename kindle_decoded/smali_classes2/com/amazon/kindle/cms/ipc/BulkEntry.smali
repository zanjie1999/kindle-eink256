.class public Lcom/amazon/kindle/cms/ipc/BulkEntry;
.super Lcom/amazon/kindle/cms/ipc/Pipeable;
.source "BulkEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/BulkEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_id:Ljava/lang/String;

.field private m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

.field private m_libraryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BulkEntry$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/BulkEntry$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Pipeable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_libraryId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_id:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    return-void
.end method


# virtual methods
.method public getPipeCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_libraryId:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_id:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfoGroup;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/MLTItemInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfo;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    :goto_0
    return-void
.end method

.method public writeToPipe(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_libraryId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/ItemPayload;->getPayloadCode()B

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntry;->m_info:Lcom/amazon/kindle/cms/ipc/ItemPayload;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;->writeToPipe(Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void
.end method
