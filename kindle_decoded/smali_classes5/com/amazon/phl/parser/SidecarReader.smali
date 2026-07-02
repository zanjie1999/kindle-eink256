.class public Lcom/amazon/phl/parser/SidecarReader;
.super Ljava/lang/Object;
.source "SidecarReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.parser.SidecarReader"


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdk cannot be null"

    .line 26
    invoke-static {p1, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/phl/parser/SidecarReader;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    const-string v0, "applicationManager cannot be null"

    .line 28
    invoke-static {p1, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public readSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/phl/model/Sidecar;
    .locals 6

    .line 37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/phl/parser/SidecarReader;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {p1}, Lcom/amazon/phl/util/SidecarFileUtil;->getFilenameForBook(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Lcom/amazon/phl/parser/SaxSidecarParserHandler;

    invoke-direct {v1}, Lcom/amazon/phl/parser/SaxSidecarParserHandler;-><init>()V

    .line 50
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    const-string v4, "http://xml.org/sax/features/external-general-entities"

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    .line 52
    invoke-virtual {v3, v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 55
    invoke-virtual {v1}, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->getSidecar()Lcom/amazon/phl/model/Sidecar;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/amazon/phl/model/Sidecar;->isValidForBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/amazon/phl/parser/SidecarReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring sidecar with asin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/amazon/phl/model/Sidecar;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "and embeddedId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Lcom/amazon/phl/model/Sidecar;->getEmbeddedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", book\'s asin: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and embeddedId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {v1, p1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 57
    sget-object v0, Lcom/amazon/phl/parser/SidecarReader;->TAG:Ljava/lang/String;

    const-string v1, "error parsing sidecar file"

    invoke-static {v0, v1, p1}, Lcom/amazon/phl/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 41
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 42
    sget-object p1, Lcom/amazon/phl/parser/SidecarReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no sidecar file found at: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", or is a directory"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method
