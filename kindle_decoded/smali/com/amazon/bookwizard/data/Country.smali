.class public Lcom/amazon/bookwizard/data/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/bookwizard/data/Country;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MARKETPLACE:Ljava/lang/String;

.field private static final EMBARGOED_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_REGION_CODE:Ljava/lang/String; = "ZZ"


# instance fields
.field private final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/data/Country;->DEFAULT_MARKETPLACE:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/amazon/bookwizard/data/Country$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/Country$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/Country;->EMBARGOED_COUNTRIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/data/Country;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 99
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/data/Country;->DEFAULT_MARKETPLACE:Ljava/lang/String;

    .line 101
    :goto_0
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 106
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/bookwizard/data/Country;->EMBARGOED_COUNTRIES:Ljava/util/Set;

    .line 107
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ZZ"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public compareTo(Lcom/amazon/bookwizard/data/Country;)I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/bookwizard/data/Country;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/Country;->compareTo(Lcom/amazon/bookwizard/data/Country;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    instance-of v0, p1, Lcom/amazon/bookwizard/data/Country;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/amazon/bookwizard/data/Country;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Country;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Country;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
