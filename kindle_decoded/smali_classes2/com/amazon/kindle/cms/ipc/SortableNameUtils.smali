.class public final Lcom/amazon/kindle/cms/ipc/SortableNameUtils;
.super Ljava/lang/Object;
.source "SortableNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;
    }
.end annotation


# static fields
.field private static final FINAL_FALLBACK_CANONICALIZED_LANGUAGE_TAG:Ljava/lang/String;

.field private static final SEPARATOR:C = '\u0001'

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AmazonCMS"

    aput-object v2, v0, v1

    .line 16
    const-class v1, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->TAG:Ljava/lang/String;

    const-string v0, "en"

    .line 17
    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->FINAL_FALLBACK_CANONICALIZED_LANGUAGE_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortValueFromDisplayValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;->getInstance(Ljava/util/Locale;)Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/ebook/util/text/SortFriendlyTitleFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static guessLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/amazon/ebook/util/text/StringUtil;->shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validate(Lcom/amazon/kindle/cms/api/SortableName;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/SortableName;->getDisplayValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/SortableName;->getSortValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/SortableName;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid SortableName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 124
    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 130
    sget-object p1, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "Invalid language tag %s, falling back"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_1
    sget-object p0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->FINAL_FALLBACK_CANONICALIZED_LANGUAGE_TAG:Ljava/lang/String;

    return-object p0

    .line 143
    :cond_2
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
