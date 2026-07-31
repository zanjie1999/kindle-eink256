.class public final Lcom/amazon/kcp/font/LocalFontManager;
.super Ljava/lang/Object;
.source "LocalFontManager.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "zyyme_fonts.xml"

.field private static final MAX_FONTS:I = 0x5

.field private static final SOURCE_DIRECTORY:Ljava/lang/String; = "zyymeFonts"

.field private static configFile:Ljava/io/File;

.field private static final displayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final fontPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static permissionRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/LocalFontManager;->displayNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearLocalState(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->displayNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/font/LocalFontManager;->writeConfig(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/font/LocalFontManager;->configFile:Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->clearFontFamilyInfoMap()V

    invoke-static {}, Lcom/amazon/kcp/font/LocalFontManager;->publishChanged()V

    return-void
.end method

.method private static appendFamily(Ljava/lang/StringBuilder;Lcom/amazon/ksdk/presets/FontInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "    <family>\n        <nameset>\n            <name>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</name>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/FontInfo;->getBoldFontFamily()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "            <name>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "        </nameset>\n        <fileset>\n            <file>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</file>\n        </fileset>\n    </family>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLabel(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getSourceFonts()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "zyymeFonts"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/amazon/kcp/font/LocalFontManager;->isValidFont(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static isValidFont(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".ttf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".otf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    :cond_2
    return v1
.end method

.method private static publishChanged()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/font/LocalFontManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/font/LocalFontsChangedEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/font/LocalFontsChangedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private static writeConfig(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "zyyme_fonts.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/LocalFontManager;->configFile:Ljava/io/File;

    if-lez p2, :cond_1

    const-string p0, "</familyset>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :try_start_0
    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string/jumbo v2, "UTF-8"

    invoke-direct {p2, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object p2, p0

    :catch_1
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public static getConfigFile()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/amazon/kcp/font/LocalFontManager;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->configFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "zyyme_fonts.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/LocalFontManager;->configFile:Ljava/io/File;

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplayName(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->displayNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public static isLocalFontFace(Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :goto_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static requestPermissionAndSync(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/amazon/kcp/font/LocalFontManager;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kcp/font/LocalFontManager;->syncIfPermitted(Landroid/content/Context;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/amazon/kcp/font/LocalFontManager;->permissionRequested:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/font/LocalFontManager;->permissionRequested:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const/16 v0, 0x2579

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static declared-synchronized sync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    invoke-static {p0}, Lcom/amazon/kcp/font/LocalFontManager;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/font/LocalFontManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :try_start_0
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->allDownloadableFonts()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_1
    if-nez v3, :cond_zyyme_has_ids

    invoke-static {p0}, Lcom/amazon/kcp/font/LocalFontManager;->clearLocalState(Landroid/content/Context;)V

    return-void

    :cond_zyyme_has_ids

    invoke-static {}, Lcom/amazon/kcp/font/LocalFontManager;->getSourceFonts()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/font/LocalFontManager;->displayNames:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    sget-object v4, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<familyset>\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/ksdk/presets/FontInfo;

    invoke-virtual {v7}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_7

    const/4 v9, 0x5

    if-ge v5, v9, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/amazon/kcp/font/LocalFontManager;->fontPaths:Ljava/util/Map;

    invoke-interface {v11, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v9}, Lcom/amazon/kcp/font/LocalFontManager;->getLabel(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/amazon/kcp/font/LocalFontManager;->displayNames:Ljava/util/Map;

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v7, v10}, Lcom/amazon/kcp/font/LocalFontManager;->appendFamily(Ljava/lang/StringBuilder;Lcom/amazon/ksdk/presets/FontInfo;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual {v1, v9, v10, v11}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    invoke-static {p0, v4, v6}, Lcom/amazon/kcp/font/LocalFontManager;->writeConfig(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/font/LocalFontManager;->configFile:Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDownload()V

    :cond_b
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->populateSupportedFonts()V

    :cond_c
    invoke-static {}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->clearFontFamilyInfoMap()V

    invoke-static {}, Lcom/amazon/kcp/font/LocalFontManager;->publishChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ZyymeFonts"

    const-string v2, "Unable to refresh local fonts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method public static syncIfPermitted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/kcp/font/LocalFontManager;->syncIfPermitted(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static syncIfPermitted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/amazon/kcp/font/LocalFontManager;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/amazon/kcp/font/LocalFontManager;->sync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
