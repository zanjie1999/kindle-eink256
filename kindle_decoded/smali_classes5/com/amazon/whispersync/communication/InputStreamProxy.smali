.class public Lcom/amazon/whispersync/communication/InputStreamProxy;
.super Lcom/amazon/whispersync/communication/IInputStream$Stub;


# static fields
.field public static final IOEXCEPTION_ERROR_CODE:I = -0x2

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.InputStreamProxy"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/IInputStream$Stub;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "available"

    const-string v3, "IOException caught while calling available"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public close()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v2, "close"

    const-string v4, "IOException caught while calling close"

    invoke-virtual {v3, v2, v4, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public readByte()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "readByte"

    const-string v3, "IOException caught while calling read"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public readBytes([B)I
    .locals 7

    invoke-static {p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "length"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "read(byte[])"

    const-string v6, "About to read"

    invoke-virtual {v0, v3, v6, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "data.length"

    aput-object v6, v3, v4

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object v0, v3, v1

    const-string/jumbo p1, "readBytes"

    const-string v0, "IOException caught while calling read"

    invoke-virtual {v2, p1, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x2

    :goto_0
    return p1
.end method

.method public readBytesIntoOffset([BII)I
    .locals 6

    invoke-static {p1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "data.length"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "offset"

    aput-object v5, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const-string v5, "length"

    aput-object v5, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string/jumbo v2, "read(byte[],int,int)"

    const-string v5, "About to read"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/InputStreamProxy;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/InputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string/jumbo p1, "readBytesIntoOffset"

    const-string v0, "IOException caught while calling read"

    invoke-virtual {p2, p1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x2

    :goto_0
    return p1
.end method
