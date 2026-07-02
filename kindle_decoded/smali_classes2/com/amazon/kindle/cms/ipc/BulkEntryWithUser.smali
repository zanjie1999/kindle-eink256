.class public final Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;
.super Lcom/amazon/kindle/cms/ipc/BulkEntry;
.source "BulkEntryWithUser.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V
    .locals 0

    .line 36
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/cms/ipc/BulkEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V

    if-nez p1, :cond_0

    const-string p1, "^"

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;->m_userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPipeCode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public readFromPipe(Ljava/io/DataInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;->m_userId:Ljava/lang/String;

    .line 62
    invoke-super {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry;->readFromPipe(Ljava/io/DataInput;)V

    return-void
.end method

.method public writeToPipe(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;->m_userId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry;->writeToPipe(Ljava/io/DataOutput;)V

    return-void
.end method
