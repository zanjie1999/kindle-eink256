.class public Lcom/amazon/ebook/util/text/recognizer/SpanishRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static spanish_ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/SpanishRecognizer;->spanish_ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x206120
        0x206361
        0x20636f
        0x206465
        0x20656c
        0x20656e
        0x206573
        0x20696e
        0x206c61
        0x206c6f
        0x207061
        0x20706f
        0x207072
        0x207175
        0x207265
        0x207365
        0x20756e
        0x207920
        0x612063
        0x612064
        0x612065
        0x61206c
        0x612070
        0x616369
        0x61646f
        0x616c20
        0x617220
        0x617320
        0x6369f3
        0x636f6e
        0x646520
        0x64656c
        0x646f20
        0x652064
        0x652065
        0x65206c
        0x656c20
        0x656e20
        0x656e74
        0x657320
        0x657374
        0x69656e
        0x69f36e
        0x6c6120
        0x6c6f73
        0x6e2065
        0x6e7465
        0x6f2064
        0x6f2065
        0x6f6e20
        0x6f7220
        0x6f7320
        0x706172
        0x717565
        0x726120
        0x726573
        0x732064
        0x732065
        0x732070
        0x736520
        0x746520
        0x746f20
        0x756520
        0xf36e20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    sget-object v0, Lcom/amazon/ebook/util/text/recognizer/SpanishRecognizer;->spanish_ngrams:[I

    invoke-static {v0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer$NGramParser;->unpack([I)[J

    return-void
.end method
