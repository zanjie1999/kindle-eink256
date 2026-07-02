.class public Lcom/amazon/kcp/translation/service/SpeakResponse;
.super Ljava/lang/Object;
.source "SpeakResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_audio:Ljava/lang/String;

.field private m_errorMessage:Ljava/lang/String;

.field private m_isOK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/service/SpeakResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_errorMessage:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_audio:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    invoke-static {v2}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->isStatusOK(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "audio"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_audio:Ljava/lang/String;

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_isOK:Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1, v2}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_errorMessage:Ljava/lang/String;

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_isOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JsonParseError"

    .line 66
    invoke-static {v2}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/amazon/kcp/translation/service/SpeakResponse;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in speak response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-static {}, Lcom/amazon/kcp/translation/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Lcom/amazon/kcp/translation/service/SpeakResponse;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/amazon/kcp/translation/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->getGenericErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_errorMessage:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_isOK:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getAudio()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_audio:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/service/SpeakResponse;->m_isOK:Z

    return v0
.end method
