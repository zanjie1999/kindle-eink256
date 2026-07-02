.class public Lcom/amazon/ebook/util/text/recognizer/HebrewRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final he_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/HebrewRecognizer;->he_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2005d005d5L
        0x2005d005d7L
        0x2005d005d9L
        0x2005d005eaL
        0x2005d105d9L
        0x2005d105deL
        0x2005d405d0L
        0x2005d405d5L
        0x2005d405d9L
        0x2005d405deL
        0x2005d405e2L
        0x2005d405e9L
        0x2005d405eaL
        0x2005dc05d0L
        0x2005dc05d4L
        0x2005de05d0L
        0x2005e205dcL
        0x2005e905dcL
        0x5d005ea0020L
        0x5d4002005d0L
        0x5d4002005d1L
        0x5d4002005d4L
        0x5d4002005dcL
        0x5d4002005deL
        0x5d4002005e9L
        0x5d405d505d0L
        0x5d505d00020L
        0x5d505dd0020L
        0x5d505df0020L
        0x5d505e80020L
        0x5d505ea0020L
        0x5d9002005d4L
        0x5d905d40020L
        0x5d905d505eaL
        0x5d905d905ddL
        0x5d905dd0020L    # 3.176676300099E-311
        0x5d905df0020L
        0x5d905e80020L
        0x5d905ea0020L
        0x5dc002005d0L
        0x5dc002005d4L
        0x5dc05d00020L
        0x5dc05d40020L
        0x5dd002005d0L
        0x5dd002005d1L
        0x5dd002005d4L
        0x5dd002005dcL
        0x5dd002005deL
        0x5dd002005e9L
        0x5de05d40020L
        0x5df002005d4L
        0x5e005d40020L
        0x5e005d90020L
        0x5e005d905ddL
        0x5e205dc0020L
        0x5e8002005d4L
        0x5e805d905ddL
        0x5e905dc0020L
        0x5ea002005d0L
        0x5ea002005d1L
        0x5ea002005d4L
        0x5ea002005dcL
        0x5ea002005deL
        0x5ea002005e9L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
