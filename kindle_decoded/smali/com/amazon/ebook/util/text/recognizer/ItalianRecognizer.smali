.class public Lcom/amazon/ebook/util/text/recognizer/ItalianRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final it_ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/ItalianRecognizer;->it_ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x20616c
        0x206368
        0x20636f
        0x206465
        0x206469
        0x206520
        0x20696c
        0x20696e
        0x206c61
        0x207065
        0x207072
        0x20756e
        0x612063
        0x612064
        0x612070
        0x612073
        0x61746f
        0x636865
        0x636f6e
        0x64656c
        0x646920
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652069
        0x65206c
        0x652070
        0x652073
        0x656c20
        0x656c6c
        0x656e74
        0x657220
        0x686520
        0x692061
        0x692063
        0x692064
        0x692073
        0x696120
        0x696c20
        0x696e20
        0x696f6e
        0x6c6120
        0x6c6520
        0x6c6920
        0x6c6c61
        0x6e6520
        0x6e6920
        0x6e6f20
        0x6e7465
        0x6f2061
        0x6f2064
        0x6f2069
        0x6f2073
        0x6f6e20
        0x6f6e65
        0x706572
        0x726120
        0x726520
        0x736920
        0x746120
        0x746520
        0x746920
        0x746f20
        0x7a696f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    sget-object v0, Lcom/amazon/ebook/util/text/recognizer/ItalianRecognizer;->it_ngrams:[I

    invoke-static {v0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer$NGramParser;->unpack([I)[J

    return-void
.end method
