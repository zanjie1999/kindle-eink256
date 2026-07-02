.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;,
        Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final sanitizeXmlDocument:Z

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->sanitizeXmlDocument:Z

    .line 156
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.xmlpull.v1.sax2.Driver"

    .line 158
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    .line 163
    :catch_1
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t initialize a sax driver for the XMLReader"

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public parseCompleteMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;-><init>()V

    .line 530
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parseInitiateMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;-><init>()V

    .line 538
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing XML response document with handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 186
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 189
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 190
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 197
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Unable to close response InputStream up after XML parse failure"

    invoke-interface {v1, v2, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 203
    :cond_1
    :goto_0
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse XML document with handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 193
    throw p1
.end method
