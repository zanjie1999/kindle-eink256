.class public Lcom/amazon/nwstd/utils/NewsstandBannerUtils;
.super Ljava/lang/Object;
.source "NewsstandBannerUtils.java"


# static fields
.field private static PSEUDO_LOCALE:Ljava/lang/String;

.field private static PSEUDO_LOCALE_WITH_R:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->TAG:Ljava/lang/String;

    const-string v0, "cs-CZ"

    .line 27
    sput-object v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->PSEUDO_LOCALE:Ljava/lang/String;

    const-string v0, "cs-rCZ"

    .line 28
    sput-object v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->PSEUDO_LOCALE_WITH_R:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLibraryCEBannerDataValid(Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getBackgroundImageURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getAcceptText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDeclineText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalePseudoLocale(Ljava/lang/String;)Z
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->PSEUDO_LOCALE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->PSEUDO_LOCALE_WITH_R:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static isPlatformValidForDefaultSourceData(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {p1}, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->isLocalePseudoLocale(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
