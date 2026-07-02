.class public Lcom/amazon/kcp/font/SystemFontUtils;
.super Ljava/lang/Object;
.source "SystemFontUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/amazon/kcp/font/SystemFontUtils; = null

.field private static final SYSTEM_FONT_FILENAME_PREFIX:Ljava/lang/String; = "system_font_filename_"

.field private static final SYSTEM_FONT_FILE_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static SYSTEM_FONT_FILE_OVERRIDE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SYSTEM_FONT_TYPEFACE_OVERRIDE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_FONT_TYPEFACE_PREFIX:Ljava/lang/String; = "system_font_typeface_"

.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED:Ljava/lang/String; = "Undefined"

.field private static checkedLanguages:Ljava/util/Set;
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

    .line 25
    const-class v0, Lcom/amazon/kcp/font/SystemFontUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_TYPEFACE_OVERRIDE_MAP:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_FILE_OVERRIDE_MAP:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->checkedLanguages:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/font/SystemFontUtils;
    .locals 2

    .line 36
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->INSTANCE:Lcom/amazon/kcp/font/SystemFontUtils;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/amazon/kcp/font/SystemFontUtils;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/font/SystemFontUtils;->INSTANCE:Lcom/amazon/kcp/font/SystemFontUtils;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/amazon/kcp/font/SystemFontUtils;

    invoke-direct {v1}, Lcom/amazon/kcp/font/SystemFontUtils;-><init>()V

    sput-object v1, Lcom/amazon/kcp/font/SystemFontUtils;->INSTANCE:Lcom/amazon/kcp/font/SystemFontUtils;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->INSTANCE:Lcom/amazon/kcp/font/SystemFontUtils;

    return-object v0
.end method

.method private getPersistedSystemFontFileInfo(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;
    .locals 5

    .line 171
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_font_filename_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system_font_typeface_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 175
    new-instance v0, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;-><init>(Lcom/amazon/kcp/font/SystemFontUtils;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)V

    return-object v0

    :cond_0
    return-object v2
.end method

.method private getSystemFontFamilyByLanguage(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance v1, Lcom/amazon/kcp/font/FontConfigParser;

    invoke-direct {v1}, Lcom/amazon/kcp/font/FontConfigParser;-><init>()V

    .line 120
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/font/FontConfigParser;->getFontFamily(Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    iget-object v1, p1, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Lcom/amazon/kcp/font/FontFileParser;

    invoke-direct {v1}, Lcom/amazon/kcp/font/FontFileParser;-><init>()V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->index:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/font/FontFileParser;->getFontFamilyNameOfFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p1, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {v1}, Lcom/amazon/krf/platform/KRF;->isValidFontFace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v2, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;-><init>(Lcom/amazon/kcp/font/SystemFontUtils;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v0
.end method

.method private overrideSystemFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->getFontFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_FILE_OVERRIDE_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->getFontFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_TYPEFACE_OVERRIDE_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private persistSystemFontFileInfo(Ljava/lang/String;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Undefined"

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p2, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->fontFileName:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, p2, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->typeFaceName:Ljava/lang/String;

    .line 149
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object p2

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system_font_filename_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_font_typeface_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/font/SystemFontUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/font/SystemFontUtils$1;-><init>(Lcom/amazon/kcp/font/SystemFontUtils;Lcom/amazon/system/io/IPersistentSettingsHelper;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateSCNSystemFont()V
    .locals 5

    .line 98
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    const-string/jumbo v1, "zh"

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/font/SystemFontUtils;->getPersistedSystemFontFileInfo(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Noto Sans CJK SC"

    .line 100
    invoke-static {v0}, Lcom/amazon/krf/platform/KRF;->isValidFontFace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v4, "NotoSansCJK-Regular"

    invoke-direct {v2, p0, v4, v0, v3}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;-><init>(Lcom/amazon/kcp/font/SystemFontUtils;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)V

    move-object v0, v2

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->getSystemFontFamilyByLanguage(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    move-result-object v0

    .line 108
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->persistSystemFontFileInfo(Ljava/lang/String;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V

    .line 110
    :cond_1
    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->overrideSystemFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V

    .line 111
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->checkedLanguages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTCNSystemFont()V
    .locals 5

    .line 81
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    const-string/jumbo v1, "zh-hant"

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/font/SystemFontUtils;->getPersistedSystemFontFileInfo(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Noto Sans CJK TC"

    .line 83
    invoke-static {v0}, Lcom/amazon/krf/platform/KRF;->isValidFontFace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v4, "NotoSansCJK-Regular"

    invoke-direct {v2, p0, v4, v0, v3}, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;-><init>(Lcom/amazon/kcp/font/SystemFontUtils;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)V

    move-object v0, v2

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->getSystemFontFamilyByLanguage(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;

    move-result-object v0

    .line 91
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->persistSystemFontFileInfo(Ljava/lang/String;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V

    .line 93
    :cond_1
    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->overrideSystemFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V

    .line 94
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->checkedLanguages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getSystemFontOverrideFontFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_FILE_OVERRIDE_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSystemFontOverrideTypeFaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->SYSTEM_FONT_TYPEFACE_OVERRIDE_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public updateSystemFonts(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 64
    sget-object v0, Lcom/amazon/kcp/font/SystemFontUtils;->checkedLanguages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "zh-hant"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/font/SystemFontUtils;->updateTCNSystemFont()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "zh"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/font/SystemFontUtils;->updateSCNSystemFont()V

    :cond_2
    :goto_0
    return-void
.end method
