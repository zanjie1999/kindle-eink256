.class public final enum Lcom/amazon/kindle/com/amazonaws/util/IOUtils;
.super Ljava/lang/Enum;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/util/IOUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    .line 30
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    .line 34
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 48
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 54
    throw p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/IOUtils;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/util/IOUtils;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/util/IOUtils;

    return-object v0
.end method
