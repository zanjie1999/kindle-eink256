.class public Lcom/amazon/overlay/translation/TranslationSelection;
.super Ljava/lang/Object;
.source "TranslationSelection.java"


# static fields
.field private static final INPUT_ASIN:Ljava/lang/String; = "TranslationAsin"

.field private static final INPUT_BOOK_ID:Ljava/lang/String; = "TranslationBookId"

.field private static final INPUT_BOOK_LANGUAGE:Ljava/lang/String; = "TranslationBookLanguage"

.field private static final INPUT_CONTENT_GUID:Ljava/lang/String; = "TranslationContentGuid"

.field private static final INPUT_DEVICE_ACCOUNT_PFM:Ljava/lang/String; = "TranslationDeviceAccountPFM"

.field private static final INPUT_END_ID:Ljava/lang/String; = "TranslationEndId"

.field private static final INPUT_START_ID:Ljava/lang/String; = "TranslationStartId"

.field private static final INPUT_TEXT:Ljava/lang/String; = "TranslationInputText"


# instance fields
.field private final m_asin:Ljava/lang/String;

.field private final m_bookId:Ljava/lang/String;

.field private final m_bookLanguage:Ljava/lang/String;

.field private final m_contentGuid:Ljava/lang/String;

.field private final m_deviceAccountPFM:Ljava/lang/String;

.field private final m_savedDestinationLanguageTag:Ljava/lang/String;

.field private final m_serializedStartPosition:Ljava/lang/String;

.field private final m_serializedStopPosition:Ljava/lang/String;

.field private final m_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_text:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_contentGuid:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_asin:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_serializedStartPosition:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_serializedStopPosition:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_deviceAccountPFM:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_savedDestinationLanguageTag:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_bookLanguage:Ljava/lang/String;

    .line 110
    iput-object p9, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_bookId:Ljava/lang/String;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/amazon/overlay/translation/TranslationSelection;
    .locals 11

    .line 119
    new-instance v10, Lcom/amazon/overlay/translation/TranslationSelection;

    const-string v0, "TranslationInputText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "TranslationContentGuid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "TranslationAsin"

    .line 120
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "TranslationStartId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "TranslationEndId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "TranslationDeviceAccountPFM"

    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "TranslationSavedDestinationLanguageTag"

    .line 122
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "TranslationBookLanguage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "TranslationBookId"

    .line 123
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/overlay/translation/TranslationSelection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static populateBundle(Landroid/os/Bundle;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 140
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslationInputText"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "TranslationContentGuid"

    .line 146
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const-string v2, "TranslationAsin"

    .line 152
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const-string v2, "TranslationBookLanguage"

    .line 158
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    const-string v2, "TranslationBookId"

    .line 164
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 170
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TranslationStartId"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranslationEndId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    const-string p1, "TranslationDeviceAccountPFM"

    .line 177
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLanguageTag()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_bookLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentGuid()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_contentGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAccountPFM()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_deviceAccountPFM:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedDestinationLanguageTag()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_savedDestinationLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedStartPosition()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_serializedStartPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedStopPosition()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_serializedStopPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationSelection;->m_text:Ljava/lang/String;

    return-object v0
.end method
