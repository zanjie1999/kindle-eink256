.class public Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;
.super Ljava/lang/Object;
.source "PersistentSettingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/system/io/PersistentSettingTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySettings"
.end annotation


# instance fields
.field private _BinarySettings:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/system/io/PersistentSettingTool$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 131
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 133
    new-array v2, v1, [B

    .line 134
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 136
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v4, 0x0

    .line 137
    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 153
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/amazon/system/io/PersistentSettingTool$BinarySettings;->_BinarySettings:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 156
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 157
    array-length v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
