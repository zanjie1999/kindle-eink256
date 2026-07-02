.class Lcom/amazon/ebook/util/text/PlatformStringUtil;
.super Ljava/lang/Object;


# static fields
.field private static final PUNCTUATION:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:punctuation:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/PlatformStringUtil;->PUNCTUATION:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
