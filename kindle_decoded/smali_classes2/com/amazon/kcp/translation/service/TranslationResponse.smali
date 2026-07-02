.class public Lcom/amazon/kcp/translation/service/TranslationResponse;
.super Ljava/lang/Object;
.source "TranslationResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

.field private m_destinationText:Ljava/lang/String;

.field protected m_errorMessage:Ljava/lang/String;

.field private m_isOK:Z

.field private m_providerMessage:Ljava/lang/String;

.field private m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

.field private m_speechAllowed:Z

.field private m_speechEnabled:Z

.field private m_warningMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/service/TranslationResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

    .line 51
    iput-object v1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

    .line 54
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_providerMessage:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_warningMessage:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 86
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    invoke-static {v3}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->isStatusOK(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "translation"

    .line 92
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationText:Ljava/lang/String;

    const-string v3, "sourceLanguageTag"

    .line 93
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

    const-string v3, "destinationLanguageTag"

    .line 94
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

    const-string v3, "providerMessage"

    .line 95
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_providerMessage:Ljava/lang/String;

    const-string v3, "speechAllowed"

    .line 96
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_speechAllowed:Z

    const-string v3, "speechEnabled"

    .line 97
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_speechEnabled:Z

    const-string/jumbo v3, "warningMessage"

    .line 100
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_warningMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_isOK:Z

    goto :goto_0

    :cond_1
    const-string v0, "errorMessage"

    .line 104
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_2
    invoke-static {p1, v3}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    .line 108
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_isOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "JsonParseError"

    .line 111
    invoke-static {v2}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/amazon/kcp/translation/service/TranslationResponse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in translation response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/translation/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lcom/amazon/kcp/translation/service/TranslationResponse;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/amazon/kcp/translation/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_4
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->getGenericErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_isOK:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getDestinationLanguage()Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

    return-object v0
.end method

.method public getDestinationText()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_destinationText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderMessage()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_providerMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLanguage()Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

    return-object v0
.end method

.method public getWarningMessage()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_warningMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_isOK:Z

    return v0
.end method

.method public isSpeechAllowed()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_speechAllowed:Z

    return v0
.end method

.method public isSpeechEnabled()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_speechEnabled:Z

    return v0
.end method
