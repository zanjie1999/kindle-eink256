.class public Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;
.super Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.source "MopKindleDocViewerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;-><init>()V

    return-void
.end method

.method private createMobiDataReader(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;
    .locals 8

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    .line 48
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;

    invoke-direct {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;-><init>()V

    .line 49
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v3

    array-length v4, p2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;->setCount(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;

    move-result-object v5

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->copyFrom(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->createIterator(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;

    move-result-object v0

    .line 55
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    .line 56
    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->createMobiDataReader(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    move-result-object p1

    if-nez p1, :cond_1

    .line 58
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->getValue()I

    move-result p2

    .line 59
    sget-object v1, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open book, error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->delete()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->delete()V

    .line 67
    :cond_3
    throw p1
.end method

.method private getDocSecurityPids(Ljava/lang/String;Lcom/amazon/system/security/Security;)[Ljava/lang/String;
    .locals 12

    .line 73
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;->createTamperproofData(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofKeys()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofValues()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v0

    .line 82
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getCount()J

    move-result-wide v2

    long-to-int v3, v2

    .line 83
    new-array v2, v3, [[B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    int-to-long v5, v4

    .line 85
    invoke-virtual {v1, v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v10, v0

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v10, v0

    move-object v11, v10

    .line 90
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getBase64()Lcom/amazon/system/security/IBase64;

    move-result-object v6

    .line 91
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getPID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-static/range {v5 .. v11}, Lcom/amazon/system/security/Security;->getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    :cond_2
    return-object p2
.end method


# virtual methods
.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 9

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isMopBook(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->initializeKindleDocFactory()V

    const/4 v1, 0x1

    .line 30
    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setHighlightingSupported(Z)V

    .line 32
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;->getDocSecurityPids(Ljava/lang/String;Lcom/amazon/system/security/Security;)[Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-direct {p0, v0, v7}, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;->createMobiDataReader(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    move-result-object v5

    .line 34
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v6

    .line 35
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    new-instance v8, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    invoke-direct {v8, p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;-><init>(Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)V

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;[Ljava/lang/String;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2
.end method
