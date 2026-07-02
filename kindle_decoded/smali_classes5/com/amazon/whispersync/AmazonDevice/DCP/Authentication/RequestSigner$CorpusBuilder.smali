.class Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;
.super Ljava/lang/Object;
.source "RequestSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusBuilder"
.end annotation


# instance fields
.field private mBody:[B

.field private mBodyLen:J

.field private mCorpus:Ljava/io/ByteArrayOutputStream;

.field private mIsValid:Z

.field private mPath:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mVerb:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Ljava/lang/String;)V
    .locals 6

    const-string v0, "\n"

    const-string v1, "UTF-8"

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->this$0:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 51
    iput-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBody:[B

    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBodyLen:J

    .line 54
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    .line 55
    iput-object p4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mTimestamp:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 59
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {p4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 62
    invoke-virtual {p4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mTimestamp:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;->getToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 70
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mToken:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_6

    .line 76
    invoke-virtual {p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getVerbAsString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 79
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mVerb:Ljava/lang/String;

    .line 83
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->access$000(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getPathAndQueryString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 92
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    const-string p4, "/"

    .line 93
    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    .line 100
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->access$000(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [B

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBody:[B

    .line 103
    iput-wide v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBodyLen:J

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyBytes()[B

    move-result-object p1

    if-eqz p1, :cond_6

    .line 110
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBody:[B

    .line 111
    invoke-virtual {p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBodyLen:J

    .line 116
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->validateComponents()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mVerb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 122
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 123
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBody:[B

    iget-wide p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mBodyLen:J

    long-to-int p4, p3

    invoke-virtual {p1, p2, v2, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 124
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mToken:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mIsValid:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "corpusbuilder: IOException error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "corpusbuilder: UnsupportedEncodingException error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getCorpus()[B
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mCorpus:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mIsValid:Z

    return v0
.end method

.method public validateComponents()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mVerb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mTimestamp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->mToken:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
