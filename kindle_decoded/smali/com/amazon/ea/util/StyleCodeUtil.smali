.class public Lcom/amazon/ea/util/StyleCodeUtil;
.super Ljava/lang/Object;
.source "StyleCodeUtil.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final STICKER_KU_DARK:Ljava/lang/String; = "ku-sticker-black"

.field private static final STICKER_KU_GREEN:Ljava/lang/String; = "ku-sticker-green"

.field private static final STICKER_KU_SEPIA:Ljava/lang/String; = "ku-sticker-sepia"

.field private static final STICKER_KU_WHITE:Ljava/lang/String; = "ku-sticker-white"

.field private static final STYLE_CODE_SCALE_LENGTH:Ljava/lang/String; = "SL"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.StyleCodeUtil"

.field private static bgKuDark:Ljava/lang/String;

.field private static bgKuLight:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addBadgeParamFromGlide(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/ea/purchase/model/BadgeInfo;Z)Ljava/lang/String;
    .locals 3

    if-eqz p3, :cond_0

    .line 112
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$color;->readingactions_bg_group_black:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/amazon/ea/util/StyleCodeUtil;->initBackgroundColor(I)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuDark:Ljava/lang/String;

    .line 113
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$color;->readingactions_bg_group_white:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/amazon/ea/util/StyleCodeUtil;->initBackgroundColor(I)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuLight:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$color;->anyactions_ku_bg_dark:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/amazon/ea/util/StyleCodeUtil;->initBackgroundColor(I)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuDark:Ljava/lang/String;

    .line 116
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$color;->anyactions_ku_bg_light:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/amazon/ea/util/StyleCodeUtil;->initBackgroundColor(I)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuLight:Ljava/lang/String;

    .line 120
    :goto_0
    sget-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuLight:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getyAxis()I

    move-result v0

    .line 123
    sget-object v1, Lcom/amazon/ea/util/StyleCodeUtil$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getSticker()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getDarkStiker()Ljava/lang/String;

    move-result-object p1

    .line 137
    sget-object p3, Lcom/amazon/ea/util/StyleCodeUtil;->bgKuDark:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getDarkStiker()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/BadgeInfo;->getSticker()Ljava/lang/String;

    move-result-object p1

    .line 153
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "AC_SL600_BG%s_"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",TopRight,-1,"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addHeightParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addKUBadgeParam(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)Ljava/lang/String;
    .locals 2

    .line 68
    sget-object v0, Lcom/amazon/ea/util/StyleCodeUtil$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "ku-sticker-white"

    goto :goto_0

    :cond_0
    const-string p1, "ku-sticker-black"

    goto :goto_0

    :cond_1
    const-string p1, "ku-sticker-sepia"

    goto :goto_0

    :cond_2
    const-string p1, "ku-sticker-green"

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_SX270_PJ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",TopRight,1,-44"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Lcom/amazon/ea/util/StyleCodeUtil;->addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const-string v1, "_"

    const/4 v2, 0x0

    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_2

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v2, "._"

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static createConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/16 v0, 0x1388

    .line 212
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 213
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method private static initBackgroundColor(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 239
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s,%s,%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localFilePathAsURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 224
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/amazon/ea/util/StyleCodeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to turn inputPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " into URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 232
    :catch_0
    sget-object v0, Lcom/amazon/ea/util/StyleCodeUtil;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create file path."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method
