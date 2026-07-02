.class public Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;
.super Ljava/lang/Object;
.source "AndroidAssociateInformationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAssociateInformationProvider;


# static fields
.field private static final KEY_ASSOCIATE_TAG:Ljava/lang/String; = "AssociateTag"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "AssociateInformation"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final context:Landroid/content/Context;

.field private final defaultAssociateTag:Ljava/lang/String;

.field private final sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->context:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->default_associate_tag:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->defaultAssociateTag:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 70
    iput-object p3, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-void
.end method

.method private static convertAssociateTagForGreatBritain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "UK"

    .line 158
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->rot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private extractAssociateTagFromPreloadProperties(Lcom/amazon/kcp/application/associate/PreloadInformationReader;)Ljava/lang/String;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lcom/amazon/kcp/application/associate/PreloadInformationReader;->getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object p1

    .line 119
    iget-boolean v1, p1, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->getAssociateTagForValidPreloadInformation(Ljava/lang/String;Lcom/amazon/kcp/application/associate/PreloadInformationResult;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->defaultAssociateTag:Ljava/lang/String;

    .line 124
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Associate tag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1
.end method

.method public static getAssociatePreferencesName()Ljava/lang/String;
    .locals 1

    const-string v0, "AssociateInformation"

    return-object v0
.end method

.method private static getAssociateTagForCountry(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 146
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->rot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0, p0, p1}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->convertAssociateTagForGreatBritain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssociateTagForNonePreloadType(Lcom/amazon/kcp/application/associate/PreloadInformationReader;)Ljava/lang/String;
    .locals 2

    .line 105
    invoke-interface {p1}, Lcom/amazon/kcp/application/associate/PreloadInformationReader;->getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v0, "AssociateTag"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getAssociateTagForValidPreloadInformation(Ljava/lang/String;Lcom/amazon/kcp/application/associate/PreloadInformationResult;)Ljava/lang/String;
    .locals 1

    .line 131
    iget-object p2, p2, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->properties:Ljava/util/Properties;

    .line 132
    invoke-static {p1, p2}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->getAssociateTagForCountry(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->getDefaultAssociateTag(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getDefaultAssociateTag(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    const-string v0, "default"

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->defaultAssociateTag:Ljava/lang/String;

    const-string/jumbo v1, "started"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAssociateTag()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 88
    invoke-static {v0, v1}, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->getPreloadInformationReader(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kcp/application/associate/PreloadInformationReader;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->getAssociateTagForNonePreloadType(Lcom/amazon/kcp/application/associate/PreloadInformationReader;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->extractAssociateTagFromPreloadProperties(Lcom/amazon/kcp/application/associate/PreloadInformationReader;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 80
    invoke-static {v0, v1}, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->getPreloadInformationReader(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kcp/application/associate/PreloadInformationReader;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationReader;->getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public setAssociateTag(Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "AssociateTag"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
