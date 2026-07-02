.class public Lcom/amazon/kcp/translation/service/UnAuthTranslationResponse;
.super Lcom/amazon/kcp/translation/service/TranslationResponse;
.source "UnAuthTranslationResponse.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    sget v0, Lcom/amazon/kindle/krl/R$string;->translation_no_authentication:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationResponse;->m_errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
