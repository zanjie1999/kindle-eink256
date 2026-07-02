.class public Lcom/amazon/kindle/io/StringStream;
.super Ljava/lang/Object;
.source "StringStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final _IS:Ljava/io/InputStream;

.field private final _ISR:Ljava/io/InputStreamReader;

.field private pData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/io/StringStream;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/io/StringStream;->_IS:Ljava/io/InputStream;

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "Wrong StringStream init : unsupported encoding"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/io/StringStream;->_ISR:Ljava/io/InputStreamReader;

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    return-void
.end method

.method private getMoreData(I)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMoreData maxIndex :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->_ISR:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_3

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->_IS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available = 0 --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMoreData available :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    new-array v2, v0, [C

    .line 138
    iget-object v3, p0, Lcom/amazon/kindle/io/StringStream;->_ISR:Ljava/io/InputStreamReader;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 147
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 140
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "IOException"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 124
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method


# virtual methods
.method charAt(I)C
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "EOFException eofe"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method exist(I)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    .line 106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method indexOf(II)I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 75
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "EOFException eofe"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    return v0
.end method

.method startsWith(Ljava/lang/String;I)Z
    .locals 2

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 95
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "EOFException eofe"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method substring(II)Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 53
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/io/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    sget-object v0, Lcom/amazon/kindle/io/StringStream;->TAG:Ljava/lang/String;

    const-string v1, "EOFException eofe"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/io/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
