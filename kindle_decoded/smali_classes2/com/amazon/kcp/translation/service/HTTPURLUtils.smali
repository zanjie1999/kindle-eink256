.class Lcom/amazon/kcp/translation/service/HTTPURLUtils;
.super Ljava/lang/Object;
.source "HTTPURLUtils.java"


# static fields
.field private static final EU_MARKETPLACES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/kcp/translation/service/HTTPURLUtils$1;

    invoke-direct {v0}, Lcom/amazon/kcp/translation/service/HTTPURLUtils$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->EU_MARKETPLACES:Ljava/util/Set;

    return-void
.end method

.method static getSpeakURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->isEU(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    sget p1, Lcom/amazon/kindle/krl/R$string;->translation_speak_url_eu:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->translation_speak_url_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTranslateURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->isEU(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    sget p1, Lcom/amazon/kindle/krl/R$string;->translation_translate_url_eu:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->translation_translate_url_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEU(Ljava/lang/String;)Z
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/kcp/translation/service/HTTPURLUtils;->EU_MARKETPLACES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
