.class public Lcom/amazon/ebook/util/text/recognizer/FinnishRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final fi_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/FinnishRecognizer;->fi_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x20006a0061L
        0x20006a006fL
        0x20006b0061L
        0x20006b006fL
        0x20006b0075L
        0x20006f006eL
        0x2000730065L
        0x2000730069L
        0x2000740061L
        0x2000740075L
        0x2000760061L
        0x2c0020006aL
        0x2c0020006bL
        0x610020006bL
        0x6100200074L
        0x61002c0020L
        0x61002e0020L
        0x610061006eL
        0x6100690073L
        0x61006c006cL
        0x61006e0020L
        0x6100730074L
        0x6100740020L
        0x65006c006cL
        0x65006e0020L
        0x6500730074L
        0x6500740074L
        0x69002c0020L
        0x69006c006cL
        0x69006e0020L
        0x69006e0065L
        0x6900730065L
        0x6900730069L
        0x6900730074L
        0x6900740074L
        0x6a00610020L
        0x6b00730065L
        0x6b00730069L
        0x6c00690073L
        0x6c006c0061L
        0x6c006c0065L
        0x6c006c0069L
        0x6e0020006bL
        0x6e00200070L
        0x6e00200073L
        0x6e00200074L
        0x6e00200076L
        0x6e002c0020L
        0x6e0065006eL
        0x6f00690073L
        0x6f006e0020L
        0x7300610020L
        0x730065006eL
        0x7300690020L
        0x7300730061L
        0x7300740061L
        0x73007400e4L
        0x7400610020L
        0x7400610061L
        0x740065006cL
        0x74006f0069L
        0x7400740061L
        0x74007400e4L
        0x7400e40020L
        0xe4006e0020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
