.class public Lcom/amazon/kcp/font/ManualFontDownloadHelper;
.super Ljava/lang/Object;
.source "ManualFontDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;,
        Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    }
.end annotation


# static fields
.field private static final CONFIG_FONT_NAME_PLACEHOLDER:Ljava/lang/String; = "%%FONT_FILE_NAME%%"

.field private static final CONFIG_FONT_PATH_PLACEHOLDER:Ljava/lang/String; = "%%PATH_TO_FONT_FILES%%"

.field private static final CONFIG_FOOTER:Ljava/lang/String; = "</familyset>\n"

.field private static final CONFIG_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<!--\n    System Fonts\n\n    This file lists the font families that will be used by default for all supported glyphs.\n    Each entry consists of a family, various names that are supported by that family, and\n    up to four font files. The font files are listed in the order of the styles which they\n    support: regular, bold, italic and bold-italic. If less than four styles are listed, then\n    the styles with no associated font file will be supported by the other font files listed.\n\n    The first family is also the default font, which handles font request that have not specified\n    specific font names.\n\n    Any glyph that is not handled by the system fonts will cause a search of the fallback fonts.\n    The default fallback fonts are specified in the file /system/etc/fallback_fonts.xml, and there\n    is an optional file which may be supplied by vendors to specify other fallback fonts to use\n    in /vendor/etc/fallback_fonts.xml.\n-->\n<familyset>\n"

.field private static final CONFIG_MYINGHEI:Ljava/lang/String; = "    <family>\n        <nameset>\n            <name>sans-serif</name>\n            <name>arial</name>\n            <name>helvetica</name>\n            <name>tahoma</name>\n            <name>verdana</name>\n            <name>Droid Sans</name>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

.field private static final CONFIG_NORMAL:Ljava/lang/String; = "    <family>\n        <nameset>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

.field private static final CONFIG_STBSHUSONG:Ljava/lang/String; = "    <family>\n        <nameset>\n            <name>serif</name>\n            <name>times</name>\n            <name>times new roman</name>\n            <name>palatino</name>\n            <name>georgia</name>\n            <name>baskerville</name>\n            <name>goudy</name>\n            <name>fantasy</name>\n            <name>cursive</name>\n            <name>ITC Stone Serif</name>\n            <name>monospace</name>\n            <name>courier</name>\n            <name>courier new</name>\n            <name>monaco</name>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

.field private static final FONT_CONFIG_TEMP_FILENAME:Ljava/lang/String; = "system_fonts.xml.temp"

.field private static final FONT_NAME_SEPARATOR:Ljava/lang/String; = "_"

.field private static INSTANCE:Lcom/amazon/kcp/font/ManualFontDownloadHelper;

.field private static final TAG:Ljava/lang/String;

.field private static isDownloadingFontByMobileDataAllowed:Z


# instance fields
.field private fontInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;",
            "Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->isDownloadingFontByMobileDataAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->fontInfoMap:Ljava/util/HashMap;

    .line 351
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 352
    iget-object v4, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->fontInfoMap:Ljava/util/HashMap;

    new-instance v5, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;-><init>(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static generateFontConfigFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 308
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system_fonts.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->executeSequentialFileOperation(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static getFont(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    .locals 5

    .line 271
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 272
    invoke-virtual {v3}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getExpandedLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    .locals 5

    .line 286
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 287
    invoke-static {v3}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->access$000(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-static {v3}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->access$100(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/font/ManualFontDownloadHelper;
    .locals 2

    const-class v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    if-nez v1, :cond_0

    .line 358
    new-instance v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    invoke-direct {v1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;-><init>()V

    sput-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    .line 360
    :cond_0
    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/ManualFontDownloadHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isDownloadingFontByMobileDataAllowed()Z
    .locals 1

    .line 299
    sget-boolean v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->isDownloadingFontByMobileDataAllowed:Z

    return v0
.end method

.method public static setDownloadingFontByMobileDataAllowed(Z)V
    .locals 0

    .line 295
    sput-boolean p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->isDownloadingFontByMobileDataAllowed:Z

    return-void
.end method

.method static supportFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 0

    .line 262
    invoke-static {p0, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getFontInfo(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;
    .locals 1

    .line 379
    invoke-static {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p1

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->fontInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->updateStatus()V

    :cond_0
    return-object p1
.end method

.method public getFontInfo(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;
    .locals 0

    .line 367
    invoke-static {p1, p2}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p1

    .line 368
    iget-object p2, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->fontInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->updateStatus()V

    :cond_0
    return-object p1
.end method
