.class public abstract Lcom/amazon/kindle/cms/ipc/Pipeable;
.super Ljava/lang/Object;
.source "Pipeable.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected OBJECT_SEPARATOR:B


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-byte v0, p0, Lcom/amazon/kindle/cms/ipc/Pipeable;->OBJECT_SEPARATOR:B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-byte v0, p0, Lcom/amazon/kindle/cms/ipc/Pipeable;->OBJECT_SEPARATOR:B

    .line 22
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;->readFromPipe(Ljava/io/DataInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getPipeCode()I
.end method

.method public abstract readFromPipe(Ljava/io/DataInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 49
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cms/ipc/Pipeable;->writeToPipe(Ljava/io/DataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 60
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 62
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 63
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :try_start_4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 59
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 60
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 67
    :try_start_6
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract writeToPipe(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
