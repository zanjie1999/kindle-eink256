.class public Lcom/amazon/kcp/translation/service/TranslationRequest;
.super Lcom/amazon/kcp/translation/service/AbstractHttpRequest;
.source "TranslationRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_ASIN:Ljava/lang/String;

.field private final m_beginPosition:Ljava/lang/String;

.field private final m_bookLanguageTag:Ljava/lang/String;

.field private final m_contentGUID:Ljava/lang/String;

.field private final m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

.field private final m_deviceAccountPFM:Ljava/lang/String;

.field private final m_deviceLanguageTag:Ljava/util/Locale;

.field private final m_endPosition:Ljava/lang/String;

.field private m_onCompleteListner:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
            "Lcom/amazon/kcp/translation/service/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

.field private final m_text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/service/TranslationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/Language;Ljava/util/Locale;Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;)V
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/translation/Language;",
            "Lcom/amazon/kcp/translation/Language;",
            "Ljava/util/Locale;",
            "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
            "Lcom/amazon/kcp/translation/service/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p9}, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 85
    iput-object p2, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_text:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_contentGUID:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_ASIN:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_beginPosition:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_endPosition:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_bookLanguageTag:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

    .line 92
    iput-object p11, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

    .line 93
    iput-object p12, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_deviceLanguageTag:Ljava/util/Locale;

    .line 94
    iput-object p13, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_onCompleteListner:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    .line 95
    iput-object p8, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_deviceAccountPFM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_sourceLanguage:Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_destinationLanguage:Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/translation/service/TranslationRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/util/Locale;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_deviceLanguageTag:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_contentGUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_ASIN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_beginPosition:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_endPosition:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_bookLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_onCompleteListner:Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    return-object p0
.end method


# virtual methods
.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 142
    new-instance v0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/translation/service/TranslationRequest$2;-><init>(Lcom/amazon/kcp/translation/service/TranslationRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest;->m_deviceAccountPFM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->getTranslateURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

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

    .line 118
    new-instance v0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/translation/service/TranslationRequest$1;-><init>(Lcom/amazon/kcp/translation/service/TranslationRequest;)V

    return-object v0
.end method
