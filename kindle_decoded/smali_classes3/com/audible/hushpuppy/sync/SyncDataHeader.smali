.class final Lcom/audible/hushpuppy/sync/SyncDataHeader;
.super Ljava/lang/Object;
.source "SyncDataHeader.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/ISyncData$Header;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;
    }
.end annotation


# instance fields
.field private headerLength:I

.field private in:Ljava/io/DataInputStream;

.field private infoItems:Ljava/util/List;

.field private final keys2values:Ljava/util/Map;

.field private majorVersion:I

.field private minorVersion:I

.field private overallConfidenceScore:J


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/sync/IFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/audible/hushpuppy/sync/SyncDataHeaderException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->keys2values:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/io/DataInputStream;

    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/IFile;->open()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 82
    throw p1
.end method

.method private deRef(I)Ljava/lang/Object;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private f4()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method private infoItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u1()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header info_item tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :pswitch_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readRef()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 273
    :pswitch_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->f4()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_3
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_4
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_5
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readPair()Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private read()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/audible/hushpuppy/sync/SyncDataHeaderException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readMagicNumber()I

    .line 209
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2()I

    move-result v0

    iput v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->majorVersion:I

    .line 210
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2()I

    move-result v0

    iput v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->minorVersion:I

    .line 211
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4()I

    move-result v0

    iput v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->headerLength:I

    .line 212
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->overallConfidenceScore:J

    .line 213
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4()I

    move-result v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItems:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 216
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItems:Ljava/util/List;

    return-void
.end method

.method private readArray()[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2()I

    move-result v0

    .line 245
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItem()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private readBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-array p1, p1, [B

    .line 284
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->read([B)I

    return-object p1
.end method

.method private readMagicNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/audible/hushpuppy/sync/SyncDataHeaderException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readMagicNumber(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method private static readMagicNumber(Ljava/io/DataInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/audible/hushpuppy/sync/SyncDataHeaderException;
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4(Ljava/io/DataInputStream;)I

    move-result p0

    const v0, -0x5f2e4ecd

    if-ne p0, v0, :cond_0

    return p0

    .line 196
    :cond_0
    new-instance v1, Lcom/audible/hushpuppy/sync/SyncDataHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid magic number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/sync/SyncDataHeaderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readPair()Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->infoItem()Ljava/lang/Object;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->keys2values:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v2, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    invoke-direct {v2, v0, v1}, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private readRef()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u1()I

    .line 255
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2()I

    move-result v0

    .line 256
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->deRef(I)Ljava/lang/Object;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->unroll(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2()I

    move-result v0

    .line 238
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->readBytes(I)[B

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private u1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method private u2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u2(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method private static u2(Ljava/io/DataInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method private u4()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->u4(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method private static u4(Ljava/io/DataInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method static unroll(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 182
    instance-of v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 186
    iget-object p0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->val:Ljava/lang/Object;

    invoke-static {p0}, Lcom/audible/hushpuppy/sync/SyncDataHeader;->unroll(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getHeaderLength()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader;->headerLength:I

    return v0
.end method
