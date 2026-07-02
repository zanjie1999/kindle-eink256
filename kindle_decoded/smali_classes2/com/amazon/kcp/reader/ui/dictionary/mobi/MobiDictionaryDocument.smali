.class public Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;
.super Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;
.source "MobiDictionaryDocument.java"


# static fields
.field private static final NOAD:Ljava/lang/String; = "The New Oxford American Dictionary"

.field private static krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;


# instance fields
.field private final TAG:Ljava/lang/String;

.field bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;-><init>()V

    .line 44
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->TAG:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "BookItem cant be null "

    .line 91
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 98
    invoke-static {p1}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->initLookup(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem initializing dictionary from KindleDocument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;-><init>()V

    .line 44
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "BookItem cant be null "

    .line 60
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 68
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->initializeDictionary(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->initLookup(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem initializing dictionary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private static findBestMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;"
        }
    .end annotation

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v3

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    .line 231
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 233
    invoke-virtual {v4}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 234
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    const-string v4, "de"

    .line 244
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "de-DE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 247
    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x2

    .line 245
    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 252
    :goto_2
    invoke-virtual {v3, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    int-to-long v6, v5

    cmp-long v8, v6, v0

    if-gez v8, :cond_5

    .line 254
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 255
    invoke-virtual {v6}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v7

    if-nez v7, :cond_4

    return-object v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const-string v8, "en"

    .line 272
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "en-GB"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "en-US"

    .line 273
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    const-string v7, "..."

    :cond_7
    const/4 p2, 0x0

    const/4 v8, 0x0

    :goto_4
    int-to-long v9, p2

    cmp-long v11, v9, v0

    if-gez v11, :cond_a

    .line 278
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    invoke-virtual {v9}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_8

    .line 279
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 280
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 282
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v6, v10, :cond_9

    .line 292
    invoke-virtual {p1, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 293
    invoke-virtual {v3, v9, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    if-le v10, v8, :cond_9

    move v5, p2

    move v8, v10

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    if-ltz v5, :cond_b

    .line 300
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    return-object p0

    :cond_b
    const/4 p1, 0x0

    :goto_5
    int-to-long v7, p1

    cmp-long p2, v7, v0

    if-gez p2, :cond_d

    .line 306
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 307
    invoke-virtual {p2}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 311
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_c

    .line 316
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v3, v5}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v5

    if-nez v5, :cond_c

    return-object p2

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 324
    :cond_d
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    return-object p0
.end method

.method private static getSecurityPid(Lcom/amazon/system/security/Security;Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofKeys()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->getTamperproofValues()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;

    move-result-object p1

    .line 170
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getCount()J

    move-result-wide v2

    long-to-int v3, v2

    .line 173
    new-array v2, v3, [[B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    int-to-long v5, v4

    .line 175
    invoke-virtual {p1, v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v5

    .line 176
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

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/system/security/Security;->getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/system/security/Security;->getBase64()Lcom/amazon/system/security/IBase64;

    move-result-object v6

    .line 181
    invoke-virtual {p0}, Lcom/amazon/system/security/Security;->getPID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/amazon/system/security/Security;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-virtual {p0}, Lcom/amazon/system/security/Security;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v9

    .line 180
    invoke-static/range {v5 .. v11}, Lcom/amazon/system/security/Security;->getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;

    move-result-object p0

    .line 188
    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 189
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    const-string p0, "ERA4WZYK"

    .line 190
    aput-object p0, v0, p1

    return-object v0
.end method

.method private initializeDictionary(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v2}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    .line 121
    sget-object v3, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->krfSecurityFactory:Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;->createTamperproofData(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;

    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->getSecurityPid(Lcom/amazon/system/security/Security;Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/amazon/kindle/dictionary/DictionaryStore;->initializeDictionary(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Ljava/util/List;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    .line 132
    :cond_1
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 329
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->close()V

    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    return-void
.end method

.method public createDefinitionView(Landroid/content/Context;Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/android/docviewer/KindleDocDefinitionView;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    return-object p1
.end method

.method protected lookupResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The New Oxford American Dictionary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "woman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 211
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    invoke-virtual {v2}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->findBestMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method
