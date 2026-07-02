.class public Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;
.super Ljava/lang/Object;
.source "CMSLibraryBannerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLibraryBanner(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/io/File;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/amazon/nwstd/utils/LocaleUtils;->getDefaultLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p0, p1, v0}, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->createLibraryBannerFromSource(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/io/File;Ljava/lang/String;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    move-result-object v1

    if-nez v1, :cond_1

    .line 49
    invoke-static {v0}, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->isLocalePseudoLocale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 50
    invoke-static {p0, v1, v0, p1}, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->createLibraryBannerFromDefaultSource(Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/res/Resources;Ljava/lang/String;Ljava/io/File;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createLibraryBannerFromDefaultSource(Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/res/Resources;Ljava/lang/String;Ljava/io/File;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;
    .locals 4

    .line 128
    new-instance v0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    invoke-direct {v0, p2}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;-><init>(Ljava/lang/String;)V

    .line 129
    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_text_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setTitle(Ljava/lang/String;)V

    .line 130
    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_text_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setDescription(Ljava/lang/String;)V

    .line 131
    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    const-string v3, "en-Us"

    invoke-virtual {p0, p2, v1, v3, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 132
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/16 v1, 0x10

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    .line 133
    sget-object p1, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wrong number of default resources for the library banner "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 138
    :cond_0
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setImagePath(Ljava/lang/String;)V

    .line 144
    sget p0, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_start_button_text:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setButtonStart(Ljava/lang/String;)V

    .line 145
    sget p0, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_cancell_button_text:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setButtonCancel(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 140
    sget-object p1, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    const-string p2, "Error while constructing library banner image path"

    invoke-static {p1, v1, p2, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static createLibraryBannerFromSource(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/io/File;Ljava/lang/String;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;
    .locals 8

    .line 67
    new-instance v0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    invoke-direct {v0, p2}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;-><init>(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "Wrong number of resources for the library banner "

    const/4 v5, 0x1

    const/16 v6, 0x10

    if-eq v2, v5, :cond_0

    .line 70
    sget-object p0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v6, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setTitle(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {p0, v1, v7, p2, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v5, :cond_1

    .line 78
    sget-object p0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v6, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 81
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setDescription(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {p0, v1, v7, p2, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v5, :cond_2

    .line 86
    sget-object p0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v6, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 91
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setImagePath(Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 101
    sget-object p0, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v6, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 104
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setButtonStart(Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v5, :cond_4

    .line 109
    sget-object p1, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v6, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 112
    :cond_4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->setButtonCancel(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 93
    sget-object p1, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->TAG:Ljava/lang/String;

    const-string p2, "Error while constructing library banner image path"

    invoke-static {p1, v6, p2, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method
