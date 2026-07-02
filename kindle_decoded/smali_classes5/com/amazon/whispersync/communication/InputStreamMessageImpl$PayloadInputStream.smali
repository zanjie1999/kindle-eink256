.class Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;
.super Ljava/io/InputStream;
.source "InputStreamMessageImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/BetterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/InputStreamMessageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayloadInputStream"
.end annotation


# instance fields
.field private mEndOfStream:Z

.field private final mPrependedDataArray:[Ljava/nio/ByteBuffer;

.field private mPrependedReadIndex:I

.field final synthetic this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    .line 45
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    .line 46
    invoke-static {p1}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$000(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$000(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readFromPrepends([BII)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_2

    .line 160
    iget v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    iget-object v4, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 161
    aget-object v3, v4, v3

    .line 162
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int v2, p3, v1

    .line 164
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 165
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 167
    :cond_0
    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 171
    :cond_1
    iget v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$200()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "maxBytesToRead"

    aput-object v4, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v2

    const/4 p3, 0x2

    const-string v0, "currentOffset"

    aput-object v0, v3, p3

    const/4 p3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p3

    const/4 p2, 0x4

    const-string p3, "bytesRead"

    aput-object p3, v3, p2

    const/4 p2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const-string/jumbo p2, "readFromPrepends"

    const-string p3, "final"

    invoke-virtual {p1, p2, p3, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 131
    iget v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 132
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/2addr v2, v0

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/communication/BetterInputStream;

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_4

    .line 53
    iget v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    iget-object v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 55
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    iget-object v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedReadIndex:I

    iget-object v3, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mPrependedDataArray:[Ljava/nio/ByteBuffer;

    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 59
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1
    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 68
    :goto_2
    iput-boolean v4, p0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    move v2, v0

    .line 73
    :cond_4
    invoke-static {}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$200()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "read"

    const-string/jumbo v4, "single-byte read; too many invocations may indicate inefficiency, and that bulk read operations should be used"

    invoke-virtual {v0, v3, v4, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_6

    const-string v5, "length"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "offset"

    const-string v9, "array.length"

    const/4 v10, 0x6

    const/4 v11, 0x2

    const-string/jumbo v12, "read"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ltz v2, :cond_5

    .line 81
    array-length v15, v1

    if-ge v2, v15, :cond_5

    if-ltz v3, :cond_5

    add-int v15, v2, v3

    array-length v4, v1

    if-gt v15, v4, :cond_5

    if-nez v3, :cond_0

    return v14

    .line 89
    :cond_0
    iget-boolean v4, v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    const/4 v15, -0x1

    if-nez v4, :cond_4

    .line 90
    invoke-static {}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$200()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v14

    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v13

    aput-object v5, v10, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v7

    aput-object v8, v10, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v10, v6

    const-string/jumbo v5, "reading with offset"

    invoke-virtual {v4, v12, v5, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-direct/range {p0 .. p3}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->readFromPrepends([BII)I

    move-result v4

    .line 96
    invoke-static {}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$200()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "bytesRead"

    aput-object v7, v6, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "finished reading with offset"

    invoke-virtual {v5, v12, v7, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge v4, v3, :cond_2

    .line 99
    iget-object v5, v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->this$0:Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-static {v5}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;->access$100(Lcom/amazon/whispersync/communication/InputStreamMessageImpl;)Ljava/io/InputStream;

    move-result-object v5

    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    invoke-virtual {v5, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 102
    :goto_0
    iput-boolean v13, v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl$PayloadInputStream;->mEndOfStream:Z

    if-lez v1, :cond_2

    add-int/2addr v4, v1

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v15, v4

    :cond_4
    :goto_1
    return v15

    .line 83
    :cond_5
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v14

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v13

    aput-object v8, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v7

    aput-object v5, v10, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v10, v2

    const-string v1, "array index out of bounds"

    invoke-static {v12, v1, v10}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Array cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
