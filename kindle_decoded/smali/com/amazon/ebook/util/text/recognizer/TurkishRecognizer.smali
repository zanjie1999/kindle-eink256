.class public Lcom/amazon/ebook/util/text/recognizer/TurkishRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final tr_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/TurkishRecognizer;->tr_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2000620061L
        0x2000620069L
        0x2000620075L
        0x2000640061L
        0x2000640065L
        0x2000670065L
        0x2000680061L
        0x200069006cL
        0x20006b0061L
        0x20006b006fL
        0x20006d0061L
        0x20006f006cL
        0x2000730061L
        0x2000740061L
        0x2000760065L
        0x2000790061L
        0x6100200062L
        0x61006b0020L
        0x61006c0061L
        0x61006d0061L
        0x61006e0020L
        0x61006e0131L
        0x6100720020L
        0x6100720061L
        0x6100720131L
        0x6100730131L
        0x6100790061L
        0x6200690072L
        0x6400610020L
        0x6400650020L
        0x6400690020L
        0x6500200062L
        0x650020006bL
        0x6500640069L
        0x65006e0020L
        0x6500720020L
        0x6500720069L
        0x6500730069L
        0x69006c0065L
        0x69006e0020L
        0x69006e0069L
        0x6900720020L
        0x6c0061006eL
        0x6c00610072L
        0x6c00650020L
        0x6c00650072L
        0x6e00200061L
        0x6e00200062L
        0x6e0020006bL
        0x6e00640061L
        0x6e00640065L
        0x6e00650020L
        0x6e00690020L
        0x6e0069006eL
        0x6e01310020L
        0x720069006eL
        0x720131006eL
        0x7600650020L
        0x7900610020L
        0x79006f0072L
        0x131006e0020L
        0x131006e0064L
        0x131006e0131L
        0x131011f0131L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
