.class public Lcom/amazon/kindle/dictionary/DictionaryStore;
.super Ljava/lang/Object;
.source "DictionaryStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "KindleDictionary"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFileToPath(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 139
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 1

    .line 119
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getInstance()Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDictionary(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 4

    .line 60
    invoke-static {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/dictionary/MobiDictionaryStore;->getDictionaryByIKindleDocument(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    sget-object v2, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->MOBI:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;-><init>(JLcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;)V

    :goto_0
    return-object p0
.end method

.method public static getDictionary(Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 4

    .line 110
    invoke-static {p0}, Lcom/amazon/kindle/dictionary/YJDictionaryStore;->getYJDictionaryByKRFBook(Lcom/amazon/krf/platform/KRFBook;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    sget-object v2, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;-><init>(JLcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;)V

    :goto_0
    return-object p0
.end method

.method public static initializeDictionary(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Ljava/util/List;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/dictionary/IDictionaryDoc;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getInstance()Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    new-instance v1, Lcom/amazon/kindle/dictionary/ErrorValue;

    invoke-direct {v1}, Lcom/amazon/kindle/dictionary/ErrorValue;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 40
    invoke-static {p0, v1, p2}, Lcom/amazon/kindle/dictionary/MobiDictionaryStore;->getMobiDictionary(Ljava/lang/String;Lcom/amazon/kindle/dictionary/ErrorValue;Ljava/util/List;)J

    move-result-wide v4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    long-to-double v7, v7

    long-to-double v2, v2

    sub-double/2addr v7, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p2, v6

    const-string v2, "Time taken to open Mobi a book: time(ms)=%f"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    invoke-virtual {v1}, Lcom/amazon/kindle/dictionary/ErrorValue;->getErrorType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    const-wide/16 p1, 0x0

    cmp-long v1, v4, p1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    sget-object p2, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->MOBI:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-direct {p1, v4, v5, p2}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;-><init>(JLcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;)V

    :goto_0
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->setDictionaryDoc(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    .line 46
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->setFilePath(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static initializeDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazon/kindle/dictionary/IDictionaryDoc;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getInstance()Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 92
    invoke-static {p4}, Lcom/amazon/kindle/dictionary/DictionaryStore;->convertFileToPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {p5}, Lcom/amazon/kindle/dictionary/DictionaryStore;->convertFileToPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 91
    invoke-static/range {v3 .. v8}, Lcom/amazon/kindle/dictionary/YJDictionaryStore;->getYJDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)J

    move-result-wide p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v1, v1

    sub-double/2addr v3, v1

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    aput-object p5, p3, p4

    const-string p4, "Time taken to open YJ a book: time(ms)=%f"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_1
    new-instance p3, Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    sget-object p4, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;-><init>(JLcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;)V

    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->setDictionaryDoc(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->setFilePath(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static resetDictionary()V
    .locals 0

    .line 148
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->resetDictionaryCache()V

    return-void
.end method
