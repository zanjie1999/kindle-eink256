.class final enum Lcom/amazon/kcp/font/FontNotification$Messaging;
.super Ljava/lang/Enum;
.source "FontNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Messaging"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/FontNotification$Messaging;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE_KAI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE_MYINGHEI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE_STBSHUSONG:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE_STHEITI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum CHINESE_YUAN:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum GUJARATI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum HINDI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum JAPANESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum MALAYALAM:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum MARATHI:Lcom/amazon/kcp/font/FontNotification$Messaging;

.field public static final enum TAMIL:Lcom/amazon/kcp/font/FontNotification$Messaging;


# instance fields
.field private final msgInfo:Ljava/lang/String;

.field private final msgName:Ljava/lang/String;

.field private final titleResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 39
    new-instance v6, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/thirdparty/R$string;->jp_font_notify_title:I

    const-string v1, "JAPANESE"

    const/4 v2, 0x0

    const-string v4, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/amazon/kcp/font/FontNotification$Messaging;->JAPANESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 40
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget v12, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const-string v8, "CHINESE"

    const/4 v9, 0x1

    const-string v11, "9MB"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 41
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->HINDI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/amazon/kindle/thirdparty/R$string;->hindi_font_notify_title:I

    const-string v2, "HINDI"

    const/4 v3, 0x2

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->HINDI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 42
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->MARATHI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget v12, Lcom/amazon/kindle/thirdparty/R$string;->marathi_font_notify_title:I

    const-string v8, "MARATHI"

    const/4 v9, 0x3

    const-string v11, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->MARATHI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 43
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->TAMIL:Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/amazon/kindle/thirdparty/R$string;->ta_font_notify_title:I

    const-string v2, "TAMIL"

    const/4 v3, 0x4

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->TAMIL:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 44
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->MALAYALAM:Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget v12, Lcom/amazon/kindle/thirdparty/R$string;->ml_font_notify_title:I

    const-string v8, "MALAYALAM"

    const/4 v9, 0x5

    const-string v11, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->MALAYALAM:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 45
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->GUJARATI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/amazon/kindle/thirdparty/R$string;->gu_font_notify_title:I

    const-string v2, "GUJARATI"

    const/4 v3, 0x6

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->GUJARATI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 47
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->MYINGHEI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const/4 v3, 0x7

    const-string v4, "CHINESE_MYINGHEI"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_MYINGHEI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 48
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STHEITI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const/16 v4, 0x8

    const-string v5, "CHINESE_STHEITI"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_STHEITI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 49
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STBSHUSONG:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const/16 v5, 0x9

    const-string v6, "CHINESE_STBSHUSONG"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_STBSHUSONG:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 50
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->KAI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const/16 v6, 0xa

    const-string v7, "CHINESE_KAI"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_KAI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 51
    new-instance v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    sget-object v1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->YUAN:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->cn_font_notify_title:I

    const/16 v7, 0xb

    const-string v8, "CHINESE_YUAN"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/amazon/kcp/font/FontNotification$Messaging;-><init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_YUAN:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/amazon/kcp/font/FontNotification$Messaging;

    .line 38
    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->JAPANESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x0

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x1

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->HINDI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x2

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->MARATHI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x3

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->TAMIL:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x4

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->MALAYALAM:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->GUJARATI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    const/4 v8, 0x6

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_MYINGHEI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_STHEITI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_STBSHUSONG:Lcom/amazon/kcp/font/FontNotification$Messaging;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/font/FontNotification$Messaging;->CHINESE_KAI:Lcom/amazon/kcp/font/FontNotification$Messaging;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/amazon/kcp/font/FontNotification$Messaging;->$VALUES:[Lcom/amazon/kcp/font/FontNotification$Messaging;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;",
            "I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p3}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getExpandedLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgName:Ljava/lang/String;

    .line 65
    invoke-virtual {p3}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgInfo:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->titleResource:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgInfo:Ljava/lang/String;

    .line 60
    iput p5, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->titleResource:I

    return-void
.end method

.method public static getForLanguage(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification$Messaging;
    .locals 6

    .line 86
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    invoke-static {}, Lcom/amazon/kcp/font/FontNotification$Messaging;->values()[Lcom/amazon/kcp/font/FontNotification$Messaging;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 88
    iget-object v5, v4, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/font/FontNotification$Messaging;->values()[Lcom/amazon/kcp/font/FontNotification$Messaging;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 93
    iget-object v4, v3, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_3
    sget-object p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->JAPANESE:Lcom/amazon/kcp/font/FontNotification$Messaging;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification$Messaging;
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/FontNotification$Messaging;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/FontNotification$Messaging;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/font/FontNotification$Messaging;->$VALUES:[Lcom/amazon/kcp/font/FontNotification$Messaging;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/FontNotification$Messaging;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/FontNotification$Messaging;

    return-object v0
.end method


# virtual methods
.method public getFailureMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 82
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->font_notify_desc_failure:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 74
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->downloading_notitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 78
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->font_notify_desc_success:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->titleResource:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification$Messaging;->msgInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
