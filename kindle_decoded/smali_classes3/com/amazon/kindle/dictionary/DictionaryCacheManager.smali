.class public Lcom/amazon/kindle/dictionary/DictionaryCacheManager;
.super Ljava/lang/Object;
.source "DictionaryCacheManager.java"


# static fields
.field private static dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;


# instance fields
.field private dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

.field private filePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/dictionary/DictionaryCacheManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    invoke-direct {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    return-object v0
.end method

.method public static resetDictionaryCache()V
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->closeDictionary()Z

    .line 59
    sget-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->dispose()V

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryCacheManager:Lcom/amazon/kindle/dictionary/DictionaryCacheManager;

    return-void
.end method


# virtual methods
.method public getDictionaryDoc()Lcom/amazon/kindle/dictionary/IDictionaryDoc;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public setDictionaryDoc(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/dictionary/DictionaryCacheManager;->filePath:Ljava/lang/String;

    return-void
.end method
