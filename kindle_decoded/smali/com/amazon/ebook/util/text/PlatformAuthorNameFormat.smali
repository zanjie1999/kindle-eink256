.class Lcom/amazon/ebook/util/text/PlatformAuthorNameFormat;
.super Ljava/lang/Object;


# static fields
.field private static final CHARS_TO_PRESERVE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[,\\\']"

    invoke-static {v0}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->createCharset(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/PlatformAuthorNameFormat;->CHARS_TO_PRESERVE:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsCJK(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result p0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
