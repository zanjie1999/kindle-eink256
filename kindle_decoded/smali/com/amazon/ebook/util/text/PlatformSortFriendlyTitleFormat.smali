.class Lcom/amazon/ebook/util/text/PlatformSortFriendlyTitleFormat;
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

    const-string v0, "[\\\']"

    invoke-static {v0}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->createCharset(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyTitleFormat;->CHARS_TO_PRESERVE:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCharsToPreserve()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/ebook/util/text/PlatformSortFriendlyTitleFormat;->CHARS_TO_PRESERVE:Ljava/util/Collection;

    return-object v0
.end method
