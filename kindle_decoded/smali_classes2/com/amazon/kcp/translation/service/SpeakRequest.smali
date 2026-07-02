.class public Lcom/amazon/kcp/translation/service/SpeakRequest;
.super Lcom/amazon/kcp/translation/service/AbstractHttpRequest;
.source "SpeakRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_asin:Ljava/lang/String;

.field private final m_beginPositionString:Ljava/lang/String;

.field private final m_contentGUID:Ljava/lang/String;

.field private final m_deviceAccountPFM:Ljava/lang/String;

.field private final m_endPositionString:Ljava/lang/String;

.field private final m_language:Lcom/amazon/kcp/translation/Language;

.field private final m_listener:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
            "Lcom/amazon/kcp/translation/service/SpeakResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final m_translatedText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/service/SpeakRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/translation/Language;",
            "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
            "Lcom/amazon/kcp/translation/service/SpeakResponse;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p7}, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_asin:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_beginPositionString:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_endPositionString:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_contentGUID:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_deviceAccountPFM:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_translatedText:Ljava/lang/String;

    .line 68
    iput-object p9, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_language:Lcom/amazon/kcp/translation/Language;

    .line 69
    iput-object p10, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_listener:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/translation/service/SpeakRequest;)Lcom/amazon/kcp/translation/Language;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_language:Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_translatedText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_contentGUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_beginPositionString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_endPositionString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/translation/service/SpeakRequest;)Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_listener:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/translation/service/SpeakRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 112
    new-instance v0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/translation/service/SpeakRequest$2;-><init>(Lcom/amazon/kcp/translation/service/SpeakRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest;->m_deviceAccountPFM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->getSpeakURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toParameterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/translation/service/SpeakRequest$1;-><init>(Lcom/amazon/kcp/translation/service/SpeakRequest;)V

    return-object v0
.end method
