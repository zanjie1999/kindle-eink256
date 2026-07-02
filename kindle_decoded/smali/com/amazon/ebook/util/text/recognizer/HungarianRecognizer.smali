.class public Lcom/amazon/ebook/util/text/recognizer/HungarianRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field public static final hu_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/HungarianRecognizer;->hu_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2000610020L
        0x200061007aL
        0x2000620065L
        0x2000650067L
        0x200065006cL
        0x2000660065L
        0x2000680061L
        0x200068006fL
        0x2000690073L
        0x20006b0065L
        0x20006b0069L
        0x20006b00f6L    # 6.79073299946E-313
        0x20006c0065L
        0x20006d0061L
        0x20006d0065L
        0x20006d0069L
        0x20006e0065L
        0x200073007aL
        0x2000740065L
        0x2000e90073L
        0x6100200061L
        0x610020006bL
        0x610020006dL
        0x6100200073L
        0x61006b0020L
        0x61006e0020L
        0x61007a0020L
        0x620061006eL
        0x620065006eL
        0x6500670079L    # 2.14324909993E-312
        0x65006b0020L
        0x65006c0020L
        0x65006c0065L
        0x65006d0020L
        0x65006e0020L
        0x6500720065L
        0x6500740020L
        0x6500740065L
        0x6500740074L
        0x6700790020L
        0x68006f0067L
        0x69006e0074L
        0x6900730020L
        0x6b00200061L
        0x6b00f6007aL
        0x6d00650067L
        0x6d0069006eL
        0x6e00200061L
        0x6e0061006bL
        0x6e0065006bL
        0x6e0065006dL
        0x6e00740020L
        0x6f00670079L
        0x7300200061L
        0x73007a0065L
        0x73007a0074L
        0x73007a00e1L
        0x7300e90067L
        0x7400200061L
        0x7400740020L
        0x7400e10073L
        0x7a00650072L
        0xe1006e0020L
        0xe900730020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
