.class public Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;
.super Ljava/lang/Object;
.source "StringResourceUtil.java"


# static fields
.field private static final AES_SUPPORTED_LANGUAGE_CODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.reportcontenterror.util.StringResourceUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "cs_CZ"

    const-string v1, "de_DE"

    const-string v2, "en_US"

    const-string v3, "es_ES"

    const-string v4, "fr_FR"

    const-string v5, "it_IT"

    const-string v6, "ja_JP"

    const-string v7, "nl_NL"

    const-string v8, "pt_BR"

    const-string v9, "zh_CN"

    const-string v10, "zh_TW"

    .line 37
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->AES_SUPPORTED_LANGUAGE_CODES:Ljava/util/List;

    return-void
.end method

.method public static fetchStringsFromAes(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 152
    invoke-static {v1}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    :try_start_1
    const-string v3, "RcePluginStringsResourceSet"

    const/4 v4, 0x1

    .line 126
    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->getResourceSet(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;->getResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    .line 152
    invoke-static {v1}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 131
    :cond_1
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const/4 v6, 0x0

    if-lt v3, v5, :cond_2

    .line 132
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    const-string v3, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "RcePluginStringsResource"

    aput-object v7, v5, v6

    .line 137
    invoke-static {p0}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getResolvedLanguageCodeWithoutVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "RcePluginStringsResource_en_US"

    .line 139
    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    .line 152
    invoke-static {v1}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 144
    :cond_3
    :try_start_3
    invoke-interface {p0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object p0

    .line 145
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :try_start_4
    invoke-static {v2}, Lcom/amazon/kindle/krx/download/IOUtils;->readInputAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {v2}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    invoke-static {v2}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 150
    :goto_2
    :try_start_5
    sget-object v2, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an exception while fetching string from AES: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    invoke-static {v1}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :goto_3
    invoke-static {v1}, Lcom/amazon/kindle/krx/download/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 153
    throw p0
.end method

.method private static getResolvedLanguageCodeWithoutVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 170
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    sget-object v3, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->AES_SUPPORTED_LANGUAGE_CODES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 186
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    sget-object v3, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->AES_SUPPORTED_LANGUAGE_CODES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#Hant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 195
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :cond_5
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 p0, 0x0

    .line 199
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    return-object v1
.end method

.method private static getString(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 72
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 56
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Could not fetch string ID: %s from AES resource."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "array"

    .line 106
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray([Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 89
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 90
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 91
    aget-object v2, p0, v1

    invoke-static {v2, p1, p2, p3}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
