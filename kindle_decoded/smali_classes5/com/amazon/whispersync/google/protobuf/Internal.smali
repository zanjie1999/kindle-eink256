.class public Lcom/amazon/whispersync/google/protobuf/Internal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;,
        Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFrom([B)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Java VM does not support a standard character set."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isValidUtf8(Lcom/amazon/whispersync/google/protobuf/ByteString;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_10

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x80

    if-ge v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v5, 0xc2

    if-lt v2, v5, :cond_f

    const/16 v5, 0xf4

    if-le v2, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    if-lt v3, v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v4, :cond_f

    const/16 v7, 0xbf

    if-le v3, v7, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0xdf

    if-gt v2, v8, :cond_5

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    if-lt v6, v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v4, :cond_f

    if-le v6, v7, :cond_7

    goto :goto_1

    :cond_7
    const/16 v6, 0xef

    if-gt v2, v6, :cond_b

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_8

    const/16 v4, 0xa0

    if-lt v3, v4, :cond_9

    :cond_8
    const/16 v4, 0xed

    if-ne v2, v4, :cond_a

    const/16 v2, 0x9f

    if-le v3, v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move v2, v8

    goto :goto_0

    :cond_b
    if-lt v8, v0, :cond_c

    return v1

    :cond_c
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-lt v8, v4, :cond_f

    if-le v8, v7, :cond_d

    goto :goto_1

    :cond_d
    const/16 v4, 0xf0

    if-ne v2, v4, :cond_e

    const/16 v4, 0x90

    if-lt v3, v4, :cond_f

    :cond_e
    if-ne v2, v5, :cond_4

    const/16 v2, 0x8f

    if-le v3, v2, :cond_4

    :cond_f
    :goto_1
    return v1

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Java VM does not support a standard character set."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
