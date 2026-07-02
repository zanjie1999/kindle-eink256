.class public Lcom/amazon/ebook/util/text/recognizer/PolishRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field public static final pl_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/PolishRecognizer;->pl_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x200063007aL
        0x200064006fL
        0x2000690020L
        0x20006a0065L
        0x20006b006fL
        0x20006d0061L
        0x20006d0069L
        0x20006e0061L
        0x20006e0069L
        0x20006f0064L
        0x200070006fL
        0x2000700072L
        0x2000730069L
        0x2000770020L
        0x2000770069L
        0x2000770079L
        0x20007a0020L
        0x20007a0061L
        0x6100200070L
        0x6100200077L
        0x61006e0069L
        0x6300680020L
        0x63007a0065L
        0x63007a0079L
        0x64006f0020L
        0x64007a0069L
        0x6500200070L
        0x6500200073L
        0x6500200077L
        0x650020007aL
        0x650067006fL
        0x65006a0020L
        0x65006d0020L
        0x65006e0069L
        0x67006f0020L
        0x6900610020L
        0x6900650020L
        0x690065006aL
        0x6b00610020L
        0x6b00690020L
        0x6b00690065L
        0x6d00690065L
        0x6e00610020L
        0x6e00690061L
        0x6e00690065L
        0x6f00200070L
        0x6f00770061L
        0x6f00770069L
        0x70006f006cL
        0x7000720061L
        0x700072006fL
        0x700072007aL
        0x72007a0065L
        0x72007a0079L
        0x7300690119L
        0x73006b0069L
        0x7300740061L
        0x7700690065L
        0x7900630068L
        0x79006d0020L
        0x7a00650020L
        0x7a00690065L
        0x7a00790020L
        0xf300770020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
