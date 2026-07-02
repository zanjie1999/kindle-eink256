.class public final Lcom/amazon/kcp/reader/ui/ReaderColumnConfigKt;
.super Ljava/lang/Object;
.source "ReaderColumnConfig.kt"


# direct methods
.method public static final synthetic access$isMultiColumnSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/ReaderColumnConfigKt;->isMultiColumnSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p0

    return p0
.end method

.method private static final isMultiColumnSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 7

    .line 211
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    .line 212
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    const/4 v3, 0x0

    if-eq p0, v2, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    .line 219
    :cond_0
    sget-object p0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v2, "Locale.JAPANESE"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Locale.JAPANESE.language"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v1, p0, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    const/4 v5, 0x1

    if-nez p0, :cond_2

    sget-object p0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v6, "Locale.CHINESE"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v6, "Locale.CHINESE.language"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 220
    :goto_1
    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    return v3

    :cond_4
    return v5

    :cond_5
    :goto_3
    return v3
.end method
