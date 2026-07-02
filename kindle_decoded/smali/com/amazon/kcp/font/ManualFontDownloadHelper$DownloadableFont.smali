.class public final enum Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
.super Ljava/lang/Enum;
.source "ManualFontDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/ManualFontDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadableFont"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

.field public static final enum KAI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

.field public static final enum MYINGHEI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

.field public static final enum STBSHUSONG:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

.field public static final enum STHEITI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

.field public static final enum YUAN:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;


# instance fields
.field private config:Ljava/lang/String;

.field private family:Lcom/mobipocket/android/drawing/FontFamily;

.field private fileName:Ljava/lang/String;

.field private fontName:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private previewDrawable:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 106
    new-instance v9, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 108
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    sget v7, Lcom/amazon/kindle/krl/R$drawable;->ic_font_myinghei:I

    const-string v1, "MYINGHEI"

    const/4 v2, 0x0

    const-string v3, "MYingHeiSMedium"

    const-string v4, "MYingHeiSMedium.ttf"

    const-string v8, "    <family>\n        <nameset>\n            <name>sans-serif</name>\n            <name>arial</name>\n            <name>helvetica</name>\n            <name>tahoma</name>\n            <name>verdana</name>\n            <name>Droid Sans</name>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V

    sput-object v9, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->MYINGHEI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 112
    new-instance v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 114
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    sget v17, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stheiti:I

    const-string v11, "STHEITI"

    const/4 v12, 0x1

    const-string v13, "STHeitiMedium"

    const-string v14, "STHeitiMedium.ttf"

    const-string v18, "    <family>\n        <nameset>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STHEITI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 118
    new-instance v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 120
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    sget v8, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stbshusong:I

    const-string v2, "STBSHUSONG"

    const/4 v3, 0x2

    const-string v4, "STBShusongRegular"

    const-string v5, "STBShusongRegular.ttf"

    const-string v9, "    <family>\n        <nameset>\n            <name>serif</name>\n            <name>times</name>\n            <name>times new roman</name>\n            <name>palatino</name>\n            <name>georgia</name>\n            <name>baskerville</name>\n            <name>goudy</name>\n            <name>fantasy</name>\n            <name>cursive</name>\n            <name>ITC Stone Serif</name>\n            <name>monospace</name>\n            <name>courier</name>\n            <name>courier new</name>\n            <name>monaco</name>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STBSHUSONG:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 124
    new-instance v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 126
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    sget v17, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stkaiti:I

    const-string v11, "KAI"

    const/4 v12, 0x3

    const-string v13, "STKaiTi"

    const-string v14, "STKaiTi.ttf"

    const-string v18, "    <family>\n        <nameset>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->KAI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 130
    new-instance v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 132
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    sget v8, Lcom/amazon/kindle/krl/R$drawable;->ic_font_styuan:I

    const-string v2, "YUAN"

    const/4 v3, 0x4

    const-string v4, "STYuanMedium"

    const-string v5, "STYuanMedium.ttf"

    const-string v9, "    <family>\n        <nameset>\n        </nameset>\n        <fileset>\n            <file>%%PATH_TO_FONT_FILES%%%%FONT_FILE_NAME%%</file>\n        </fileset>\n    </family>\n"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->YUAN:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    .line 105
    sget-object v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->MYINGHEI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STHEITI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STBSHUSONG:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->KAI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->$VALUES:[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fontName:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fileName:Ljava/lang/String;

    .line 152
    invoke-static {p5}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->language:Ljava/lang/String;

    .line 153
    iput-object p6, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->family:Lcom/mobipocket/android/drawing/FontFamily;

    .line 154
    iput p7, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->previewDrawable:I

    .line 155
    iput-object p8, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->config:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->family:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    .locals 1

    .line 105
    const-class v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->$VALUES:[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    return-object v0
.end method


# virtual methods
.method fontFileExists()Z
    .locals 2

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getFontPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method getConfigString()Ljava/lang/String;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->config:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fileName:Ljava/lang/String;

    const-string v2, "%%FONT_FILE_NAME%%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->family:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedLanguage()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->language:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewDrawable()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->previewDrawable:I

    return v0
.end method
