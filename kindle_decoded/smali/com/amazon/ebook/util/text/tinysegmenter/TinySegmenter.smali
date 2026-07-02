.class Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;,
        Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$CharInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_MAX_TOKEN_SIZE:I = 0xff

.field private static final JAPANESE_NUMBER_SET:Ljava/util/Set;

.field private static final MIN_CHARINFO_BUFFER_SIZE:I = 0x7


# instance fields
.field private buffer:[Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$CharInfo;

.field private done:Z

.field private end:I

.field private eos:Z

.field private eosCount:I

.field private p1:Ljava/lang/String;

.field private p2:Ljava/lang/String;

.field private p3:Ljava/lang/String;

.field private position:I

.field private reader:Lcom/amazon/ebook/util/text/tinysegmenter/CodePointReader;

.field private tokenBuffer:[Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$CharInfo;

.field private tokenPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$1;

    invoke-direct {v0}, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->JAPANESE_NUMBER_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->eos:Z

    iput v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->eosCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->end:I

    iput v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->position:I

    iput-boolean v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->done:Z

    const-string v1, "U"

    iput-object v1, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->p1:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->p2:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->p3:Ljava/lang/String;

    iput v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;->tokenPosition:I

    return-void
.end method
