.class public Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "SocialSharingBook.java"


# static fields
.field private static final DEFAULT_READING_PROGRESS:I


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private final shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    return-void
.end method

.method private processReadingProgress(I)I
    .locals 2

    .line 41
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$integer;->share_progress_end_of_book:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getBookContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getFpr()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->shareIntentInformation:Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getAcrGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v0

    return-object v0
.end method

.method public getLpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getLpr()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMrpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getMrpr()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->processReadingProgress(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v0

    return v0
.end method

.method public isFixedLayout()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v0

    return v0
.end method

.method public isFreeTrial()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFreeTrial()Z

    move-result v0

    return v0
.end method
