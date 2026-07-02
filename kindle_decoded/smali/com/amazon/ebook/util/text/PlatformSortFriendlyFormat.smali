.class Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat$UnicodeSetCollection;
    }
.end annotation


# static fields
.field private static CHARS_TO_COALESCE:Lcom/ibm/icu/text/UnicodeSet;

.field private static CHARS_TO_DELETE:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[:control:][:separator:][:symbol:][:punctuation:][:private_use:][:surrogate:]]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->CHARS_TO_COALESCE:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:format:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->CHARS_TO_DELETE:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allCharsInHanOrCommon(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/amazon/ebook/util/text/StringUtil;->allCharsInTheseScripts(Ljava/lang/String;[I)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 4
        0x11
        0x0
    .end array-data
.end method

.method static anyCharsInHanHiraganaOrKatakana(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/amazon/ebook/util/text/StringUtil;->anyCharsInTheseScripts(Ljava/lang/String;[I)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 4
        0x11
        0x14
        0x16
    .end array-data
.end method

.method static containsCharsToCoalesce(I)Z
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->CHARS_TO_COALESCE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method static containsCharsToDelete(I)Z
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->CHARS_TO_DELETE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method static createCharset(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat$UnicodeSetCollection;

    invoke-direct {v0, p0}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat$UnicodeSetCollection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
