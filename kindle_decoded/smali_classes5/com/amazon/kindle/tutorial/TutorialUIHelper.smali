.class public Lcom/amazon/kindle/tutorial/TutorialUIHelper;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"


# static fields
.field private static final DRAWABLE_KEY:Ljava/lang/String; = "drawable"

.field private static final ENGLISH_KEY:Ljava/lang/String; = "en"

.field private static final FILE_NAME_KEY:Ljava/lang/String; = "fileName"

.field private static final IMAGE_DEFAULT_LOCALE_KEY:Ljava/lang/String; = "default"

.field private static final LAND_DIRECTORY:Ljava/lang/String; = "land"

.field private static final PORT_DIRECTORY:Ljava/lang/String; = "port"

.field private static final RESOURCE_REF_NAME_KEY:Ljava/lang/String; = "resourceRefName"

.field private static final RESOURCE_SET_KEY:Ljava/lang/String; = "resourceSet"

.field private static final TAG:Ljava/lang/String;

.field private static final URL_KEY:Ljava/lang/String; = "url"

.field private static commonText:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static textRefPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->commonText:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "@(.+)/(.+)"

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->textRefPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addText(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->commonText:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->commonText:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentMap;

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 118
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_1
    invoke-interface {p0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static createDecodeOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 512
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 513
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v1, 0xa0

    .line 514
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 515
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    return-object v0
.end method

.method private static getDownloadedFile(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/content/res/Resources;)Ljava/io/File;
    .locals 7

    .line 429
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getResourceSetName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 437
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->getResourceSet(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;->getResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 440
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getResourceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 442
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceByRefName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 447
    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 456
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 460
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    .line 466
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "land"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-ne p1, v3, :cond_3

    .line 468
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 473
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object p1

    .line 478
    :cond_4
    sget-object p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Files from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can not be found in the root!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_5
    sget-object p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can not be retrieved!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v1
.end method

.method private static getImageDrawableByName(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "drawable"

    .line 413
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 414
    invoke-static {p1, p0, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLocalizedUrls(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    .line 210
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 214
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResourceLocationFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "type"

    .line 538
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resourceSet"

    .line 539
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "resourceRefName"

    .line 540
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    .line 544
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 548
    invoke-static {}, Lcom/amazon/kindle/utils/LanguageUtils;->adaptDefaultLocale()Ljava/util/Locale;

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/tutorial/TutorialUIHelper$6;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$6;-><init>(Lorg/json/JSONObject;)V

    const-string p0, "default"

    .line 547
    invoke-static {v3, v4, p0}, Lcom/amazon/kindle/util/LocaleUtils;->getValueByLocale(Ljava/util/Locale;Lcom/amazon/foundation/IValueGetter;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    .line 556
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 559
    :goto_0
    new-instance v3, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "en"

    .line 136
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getText(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 141
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 143
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 144
    check-cast p0, Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->textRefPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v4, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->commonText:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_1

    .line 152
    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 155
    invoke-static {}, Lcom/amazon/kindle/utils/LanguageUtils;->adaptDefaultLocale()Ljava/util/Locale;

    move-result-object p0

    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$1;-><init>(Ljava/util/Map;)V

    .line 154
    invoke-static {p0, v0, p2}, Lcom/amazon/kindle/util/LocaleUtils;->getValueByLocale(Ljava/util/Locale;Lcom/amazon/foundation/IValueGetter;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 165
    :cond_0
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p0, p2, v2

    const-string p0, "Key \'/%s\' not found in string reference \'%s\'"

    invoke-static {p0, p2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object p2, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p0, v0, v2

    const-string p0, "Namespace \'@%s\' not found in string reference \'%s\'"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 171
    :cond_2
    sget-object p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "String value for key \'%s\' does not contain translations!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 173
    :cond_3
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 176
    invoke-static {}, Lcom/amazon/kindle/utils/LanguageUtils;->adaptDefaultLocale()Ljava/util/Locale;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;-><init>(Ljava/lang/Object;)V

    .line 175
    invoke-static {p1, v0, p2}, Lcom/amazon/kindle/util/LocaleUtils;->getValueByLocale(Ljava/util/Locale;Lcom/amazon/foundation/IValueGetter;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    const-string p1, ""

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 187
    :cond_4
    sget-object p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Key \'%s\' does not refer to a String or JSONObject!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setImage(Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p1, p0, p2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImageUsingBundledResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/widget/ImageView;Landroid/app/Activity;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {p1, p0, p2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImageUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/widget/ImageView;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setImageUsingBundledResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/widget/ImageView;Landroid/app/Activity;)V
    .locals 1

    .line 289
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 290
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getFileName()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {v0, p2, p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getImageDrawableByName(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 294
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 296
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static setImageUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/widget/ImageView;Landroid/app/Activity;)V
    .locals 0

    .line 271
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 273
    invoke-static {p0, p2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getDownloadedFile(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/content/res/Resources;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 275
    invoke-static {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImageViewFromFile(Ljava/io/File;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private static setImageViewFromFile(Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 2

    .line 499
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->createDecodeOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image View is correctly set using "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from app expan service."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 2

    .line 255
    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p2, p0, p1, p3, p4}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setVideoUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setVideoUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .line 318
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 319
    invoke-static {p0, p3}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getDownloadedFile(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/content/res/Resources;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {p4}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 327
    :cond_0
    new-instance p4, Landroid/media/MediaPlayer;

    invoke-direct {p4}, Landroid/media/MediaPlayer;-><init>()V

    .line 330
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 331
    invoke-virtual {p4, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 p3, 0x0

    .line 332
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 334
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;-><init>(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 355
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;-><init>(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/media/MediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 370
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;-><init>(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 388
    invoke-virtual {p4}, Landroid/media/MediaPlayer;->prepare()V

    .line 389
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p0

    .line 399
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tutorial Video Loading IO Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 397
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tutorial Video Loading Illegal State Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 395
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tutorial Video Loading Security Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 393
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tutorial Video Loading Illegal Argument Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
