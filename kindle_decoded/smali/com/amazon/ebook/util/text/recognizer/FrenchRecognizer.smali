.class public Lcom/amazon/ebook/util/text/recognizer/FrenchRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static french_ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/FrenchRecognizer;->french_ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x206175
        0x20636f
        0x206461
        0x206465
        0x206475
        0x20656e
        0x206574
        0x206c61
        0x206c65
        0x207061
        0x20706f
        0x207072
        0x207175
        0x207365
        0x20736f
        0x20756e
        0x20e020
        0x616e74
        0x617469
        0x636520
        0x636f6e
        0x646520
        0x646573
        0x647520
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652065
        0x65206c
        0x652070
        0x652073
        0x656e20
        0x656e74
        0x657220
        0x657320
        0x657420
        0x657572
        0x696f6e
        0x697320
        0x697420
        0x6c6120
        0x6c6520
        0x6c6573
        0x6d656e
        0x6e2064
        0x6e6520
        0x6e7320
        0x6e7420
        0x6f6e20
        0x6f6e74
        0x6f7572
        0x717565
        0x72206c
        0x726520
        0x732061
        0x732064
        0x732065
        0x73206c
        0x732070
        0x742064
        0x746520
        0x74696f
        0x756520
        0x757220
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    sget-object v0, Lcom/amazon/ebook/util/text/recognizer/FrenchRecognizer;->french_ngrams:[I

    invoke-static {v0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer$NGramParser;->unpack([I)[J

    return-void
.end method
