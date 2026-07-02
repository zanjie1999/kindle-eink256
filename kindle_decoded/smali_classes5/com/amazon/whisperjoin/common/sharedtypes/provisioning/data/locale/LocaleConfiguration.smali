.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;
.super Ljava/lang/Object;
.source "LocaleConfiguration.java"


# static fields
.field private static final KEY_SET:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mCountryOfResidence:Ljava/lang/String;

.field private mLanguageLocale:Ljava/lang/String;

.field private mMarketplace:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LocaleConfiguration.CountryCode"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LocaleConfiguration.CountryOfResidence"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LocaleConfiguration.LanguageLocale"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LocaleConfiguration.Marketplace"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LocaleConfiguration.Realm"

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LocaleConfiguration.Region"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->KEY_SET:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public static fromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;
    .locals 3

    .line 188
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;-><init>()V

    const/4 v1, 0x0

    const-string v2, "LocaleConfiguration.CountryCode"

    .line 189
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setCountryCode(Ljava/lang/String;)V

    const-string v2, "LocaleConfiguration.CountryOfResidence"

    .line 190
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setCountryOfResidence(Ljava/lang/String;)V

    const-string v2, "LocaleConfiguration.LanguageLocale"

    .line 191
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setLanguageLocale(Ljava/lang/String;)V

    const-string v2, "LocaleConfiguration.Marketplace"

    .line 192
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setMarketplace(Ljava/lang/String;)V

    const-string v2, "LocaleConfiguration.Realm"

    .line 193
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setRealm(Ljava/lang/String;)V

    const-string v2, "LocaleConfiguration.Region"

    .line 194
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setRegion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;
    .locals 2

    .line 168
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;-><init>()V

    const-string v1, "LocaleConfiguration.CountryCode"

    .line 169
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setCountryCode(Ljava/lang/String;)V

    const-string v1, "LocaleConfiguration.CountryOfResidence"

    .line 170
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setCountryOfResidence(Ljava/lang/String;)V

    const-string v1, "LocaleConfiguration.LanguageLocale"

    .line 171
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setLanguageLocale(Ljava/lang/String;)V

    const-string v1, "LocaleConfiguration.Marketplace"

    .line 172
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setMarketplace(Ljava/lang/String;)V

    const-string v1, "LocaleConfiguration.Realm"

    .line 173
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setRealm(Ljava/lang/String;)V

    const-string v1, "LocaleConfiguration.Region"

    .line 174
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->setRegion(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public buildDataMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 3

    .line 93
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "LocaleConfiguration.CountryCode"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "LocaleConfiguration.CountryOfResidence"

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "LocaleConfiguration.LanguageLocale"

    .line 104
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "LocaleConfiguration.Marketplace"

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "LocaleConfiguration.Realm"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "LocaleConfiguration.Region"

    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 215
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    .line 217
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    .line 218
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    .line 219
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    .line 220
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    .line 221
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    .line 222
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setCountryOfResidence(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    return-void
.end method

.method public setLanguageLocale(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    return-void
.end method

.method public setMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 202
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    const-string v2, "mCountryCode"

    .line 203
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    const-string v2, "mCountryOfResidence"

    .line 204
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    const-string v2, "mLanguageLocale"

    .line 205
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    const-string v2, "mMarketplace"

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    const-string v2, "mRealm"

    .line 207
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    const-string v2, "mRegion"

    .line 208
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 209
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.CountryCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.CountryOfResidence"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.LanguageLocale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Marketplace"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Realm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Region"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryCode:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.CountryCode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mCountryOfResidence:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.CountryOfResidence"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mLanguageLocale:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.LanguageLocale"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mMarketplace:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Marketplace"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRealm:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Realm"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->mRegion:Ljava/lang/String;

    const-string v1, "LocaleConfiguration.Region"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
