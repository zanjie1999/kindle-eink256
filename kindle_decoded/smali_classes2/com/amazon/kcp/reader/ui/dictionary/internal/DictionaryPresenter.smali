.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;
.super Ljava/lang/Object;
.source "DictionaryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

.field private dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

.field private openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    return-void
.end method

.method public static alterSelected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 198
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 210
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 216
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    if-ge p1, v1, :cond_3

    .line 221
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 223
    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_5

    .line 228
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isPunctuation(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_3
    if-ge v3, p1, :cond_8

    if-eqz v4, :cond_8

    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isPunctuation(C)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 251
    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isPunctuation(C)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 p1, p1, -0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    add-int/2addr p1, v2

    .line 261
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_5
    return-object v1
.end method

.method private getBookBaseLanguage()Ljava/lang/String;
    .locals 2

    .line 391
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLanguageCodeForSelectedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 295
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLangDetector()Lcom/amazon/kindle/langdetector/BookLangDetector;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 305
    :cond_1
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getBookBaseLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 312
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isIndic(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 316
    :cond_3
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getTextOnCurrentPage(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    .line 324
    :cond_4
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/langdetector/BookLangDetector;->detect(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Result;

    move-result-object v2

    .line 325
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/langdetector/BookLangDetector;->mainScriptOfText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_5

    .line 329
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 331
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->languageConfidenceForScript(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_7

    .line 334
    iget-object v0, p1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->confidence:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    sget-object v2, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceHigh:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    if-eq v0, v2, :cond_6

    iget-object v0, p1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->confidence:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    sget-object v2, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceMedium:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    if-ne v0, v2, :cond_7

    .line 336
    :cond_6
    iget-object v1, p1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->language:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/kindle/langdetector/LangDetectorError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object v1
.end method

.method private getTextOnCurrentPage(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 346
    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getElementsOnCurrentPage(I)Ljava/util/Vector;

    move-result-object p1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IPageElement;

    .line 350
    instance-of v2, v1, Lcom/amazon/android/docviewer/IWordPageElement;

    if-eqz v2, :cond_0

    .line 351
    check-cast v1, Lcom/amazon/android/docviewer/IWordPageElement;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initializeDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 150
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-nez p1, :cond_0

    .line 152
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->TAG:Ljava/lang/String;

    const-string v0, "Closing current dictionary before opening new one"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->closeCurrentDictionary()V

    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening dictionary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->getDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    return-void
.end method

.method private isIndic(Ljava/lang/String;)Z
    .locals 7

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xcee

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd01

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd9f

    if-eq v0, v1, :cond_2

    const/16 v1, 0xda5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe6d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "mr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "ml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "hi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "gu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    return v2

    :cond_6
    return v6
.end method

.method private static isPunctuation(C)Z
    .locals 2

    .line 276
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 277
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    .line 278
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    .line 279
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 280
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    .line 281
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 282
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public closeDictionary()V
    .locals 2

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 166
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 167
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->closeCurrentDictionary()V

    .line 168
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Closing current dictionary"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDictionaryLanguage()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getLanguageCodeForSelectedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getBookBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_1
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 376
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p1, "-"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 381
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDictionaryLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, p1

    :cond_3
    return-object v0
.end method

.method public getOpenedDictionary()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getOpenedDictionaryDocument()Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    return-object v0
.end method

.method hasDefinitionForWord(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;
    .locals 3

    .line 63
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->NO_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->getCustomMessageResourceId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 79
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_AVAILABLE_YET:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    .line 85
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 88
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->TAG:Ljava/lang/String;

    const-string v0, "DictionaryLocator returned was null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_ERROR:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 92
    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 98
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isSelectedDictionaryClosed(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openDictionary(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    if-nez v1, :cond_5

    .line 109
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_ERROR:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    .line 113
    :cond_5
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->alterSelected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    invoke-interface {v1, p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 115
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->HAS_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    .line 121
    :cond_6
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->NO_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1

    .line 99
    :cond_7
    :goto_0
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_LOCAL:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    return-object p1
.end method

.method public isSelectedDictionaryClosed(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openedDictionary:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 182
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public openDictionary(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->initializeDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method
