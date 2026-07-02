.class public Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.super Ljava/lang/Object;
.source "MobiKindleDocViewerFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookEnumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field protected krfDocumentFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

.field protected krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachResourceContainerPaths(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    .locals 4

    .line 180
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    .line 181
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    .line 185
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {v1, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 193
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v2, v3, :cond_0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->attachResourceContainer(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 11

    .line 110
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->initializeKindleDocFactory()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 115
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFileDescriptorFromFilename(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    invoke-virtual {v2, p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;->createTamperproofData(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 128
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofKeys()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v4

    .line 129
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofValues()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;

    move-result-object v5

    .line 131
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v4

    .line 133
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getCount()J

    move-result-wide v6

    long-to-int v7, v6

    .line 134
    new-array v6, v7, [[B

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    int-to-long v9, v8

    .line 136
    invoke-virtual {v5, v9, v10}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v9

    .line 137
    invoke-virtual {v9}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v4

    move-object v10, v6

    goto :goto_1

    :cond_2
    move-object v9, v0

    move-object v10, v9

    .line 140
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getBase64()Lcom/amazon/system/security/IBase64;

    move-result-object v5

    .line 141
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getPID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-static/range {v4 .. v10}, Lcom/amazon/system/security/Security;->getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;

    move-result-object p2

    .line 148
    array-length v4, p2

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 149
    array-length v6, p2

    invoke-static {p2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, v4, -0x1

    const-string v6, "ERA4WZYK"

    .line 150
    aput-object v6, v5, p2

    .line 153
    new-instance p2, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;

    invoke-direct {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;-><init>()V

    .line 154
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;->setCount(J)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    .line 156
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->copyFrom(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 158
    :cond_3
    invoke-static {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->createIterator(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;

    move-result-object v0

    .line 161
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    .line 162
    iget-object p2, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfDocumentFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    invoke-virtual {p2, p1, v1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->createKindleDocument(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object p1

    if-nez p1, :cond_4

    .line 165
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->getValue()I

    move-result p2

    .line 166
    sget-object v1, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open book, error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object p2

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/font/FontConfigInitializer;->onBookOpen(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->delete()V

    :cond_5
    if-eqz v2, :cond_6

    .line 175
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_3
    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->delete()V

    :cond_7
    if-eqz v2, :cond_8

    .line 175
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    .line 176
    :cond_8
    throw p1
.end method

.method protected createKRFDocumentForBookOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 2

    const-string v0, "Create KRF IKindleDocument"

    const/4 v1, 0x1

    .line 97
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 99
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->attachResourceContainerPaths(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V

    :cond_0
    const/4 p1, 0x0

    .line 104
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p2
.end method

.method protected declared-synchronized initializeKindleDocFactory()V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfDocumentFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/amazon/kcp/application/KRF4Helper;->loadNativeLibraries()V

    .line 48
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfDocumentFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    .line 49
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    const-string v0, "MobiKindleDocViewerFactory.createKRFDocumentForBookOpen()"

    const/4 v1, 0x1

    .line 55
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocumentForBookOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v5

    const/4 v8, 0x0

    .line 57
    invoke-static {v0, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-nez v5, :cond_0

    return-object v0

    .line 62
    :cond_0
    instance-of v2, p1, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    if-eqz v2, :cond_4

    .line 63
    move-object v2, p1

    check-cast v2, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    .line 68
    iget-object v3, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->bookEnumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    if-nez v3, :cond_1

    .line 69
    new-instance v3, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    iput-object v3, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->bookEnumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    .line 72
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->bookEnumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBook(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 75
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    const-string v1, "error loading book metadata:"

    if-eqz p2, :cond_2

    .line 76
    sget-object p1, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_2
    sget-object p2, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, " sideloaded content"

    :goto_0
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_4
    const-string v9, "MobiDocViewer.<init>"

    .line 84
    invoke-static {v9, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMobiDocFactory()Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    move-result-object v2

    iget-object v7, p0, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/android/docviewer/mobi/MobiDocFactory;->createMobiDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Landroid/os/ParcelFileDescriptor;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    .line 87
    invoke-static {v9, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string p2, "MobiDocViewer.renderFirstPage()"

    .line 89
    invoke-static {p2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->renderFirstPage()Z

    move-result v1

    .line 91
    invoke-static {p2, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    return-object v0
.end method
