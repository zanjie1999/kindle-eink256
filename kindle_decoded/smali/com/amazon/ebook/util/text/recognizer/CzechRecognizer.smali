.class public Lcom/amazon/ebook/util/text/recognizer/CzechRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final cs_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/CzechRecognizer;->cs_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2000610020L
        0x2000620079L
        0x200064006fL
        0x20006a0065L
        0x20006e0061L
        0x20006e0065L
        0x20006f0020L
        0x20006f0064L
        0x200070006fL
        0x2000700072L
        0x2000700159L
        0x200072006fL
        0x2000730065L
        0x200073006fL
        0x2000730074L
        0x200074006fL
        0x2000760020L
        0x2000760079L
        0x20007a0061L
        0x6100200070L
        0x6300650020L
        0x6300680020L
        0x6500200070L
        0x6500200073L
        0x6500200076L
        0x65006d0020L
        0x65006e00edL
        0x68006f0020L
        0x68006f0064L
        0x6900730074L
        0x6a00650020L
        0x6b00740065L
        0x6c00650020L
        0x6c00690020L
        0x6e00610020L
        0x6e00e90020L
        0x6e011b0020L
        0x6e00ed0020L
        0x6f00200070L
        0x6f0064006eL
        0x6f006a0069L
        0x6f00730074L
        0x6f00750020L
        0x6f00760061L
        0x70006f0064L
        0x70006f006aL
        0x700072006fL
        0x7001590065L
        0x7300650020L
        0x73006f0075L
        0x7300740061L
        0x7300740069L
        0x730074006eL
        0x7400650072L
        0x74006e00edL
        0x74006f0020L
        0x7500200070L
        0x17e00650020L
        0xe1006e00edL
        0xe90068006fL
        0xed00200070L
        0xed00200073L
        0xed006d0020L
        0x15900650064L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
