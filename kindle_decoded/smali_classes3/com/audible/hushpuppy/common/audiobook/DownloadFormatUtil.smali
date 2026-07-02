.class public final Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;
.super Ljava/lang/Object;
.source "DownloadFormatUtil.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrespondingStandardAudioDownloadFormat(Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 71
    sget-object v0, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil$1;->$SwitchMap$com$audible$mobile$domain$Format:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 75
    sget-object p0, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Lcom/audible/mobile/domain/Format;->AAX_44_64:Lcom/audible/mobile/domain/Format;

    return-object p0
.end method

.method public static getDefaultAudiobookDownloadFormat()Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 57
    sget-object v0, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    return-object v0
.end method

.method public static getPreferredAudiobookDownloadFormat(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object p0, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Format was empty/null. Returning default download format"

    invoke-interface {p0, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getDefaultAudiobookDownloadFormat()Lcom/audible/mobile/domain/Format;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/domain/Format;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-static {p0}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getCorrespondingStandardAudioDownloadFormat(Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/Format;

    move-result-object p0

    return-object p0

    .line 43
    :catch_0
    sget-object p0, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Not a valid format. Returning default download format"

    invoke-interface {p0, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getDefaultAudiobookDownloadFormat()Lcom/audible/mobile/domain/Format;

    move-result-object p0

    return-object p0
.end method
