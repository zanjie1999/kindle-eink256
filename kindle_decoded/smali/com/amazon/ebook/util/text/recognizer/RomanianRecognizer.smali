.class public Lcom/amazon/ebook/util/text/recognizer/RomanianRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field public static final ro_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/RomanianRecognizer;->ro_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2000610020L
        0x2000610063L
        0x2000630061L
        0x2000630065L
        0x200063006fL
        0x2000630075L
        0x2000640065L
        0x2000640069L
        0x20006c0061L    # 6.79073623E-313
        0x20006d0061L
        0x2000700065L
        0x2000700072L
        0x2000730065L
        0x2000730103L
        0x200075006eL
        0x20015f0069L
        0x2000ee006eL
        0x6100200063L
        0x6100200064L
        0x6100720065L
        0x6100740020L
        0x6100740065L
        0x6100750020L
        0x6300610072L
        0x63006f006eL
        0x6300750020L
        0x6301030020L
        0x6400650020L
        0x6500200061L
        0x6500200063L
        0x6500200064L
        0x6500200070L
        0x6500200073L
        0x6500610020L
        0x6500690020L
        0x65006c0065L
        0x65006e0074L
        0x6500730074L
        0x6900200061L
        0x6900200063L
        0x6900200064L
        0x6900200070L
        0x6900650020L
        0x6900690020L
        0x69006e0020L
        0x6c00610020L
        0x6c00650020L
        0x6c006f0072L
        0x6c00750069L
        0x6e00650020L
        0x6e00740072L
        0x6f00720020L
        0x700065006eL
        0x7200650020L
        0x7200650061L
        0x7200750020L
        0x7301030020L
        0x7400650020L
        0x7400720075L
        0x7401030020L
        0x7500690020L
        0x75006c0020L
        0x15f00690020L
        0xee006e0020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
