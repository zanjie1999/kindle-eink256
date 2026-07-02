.class public Lcom/amazon/ebook/util/text/recognizer/ArabicRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final ar_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/ArabicRecognizer;->ar_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2006270644L
        0x2006270646L
        0x2006280627L
        0x2006390644L
        0x200641064aL
        0x2006440644L
        0x2006450646L
        0x2006480627L
        0x62700200627L
        0x62706210020L
        0x627062a0020L
        0x62706310020L
        0x62706440020L
        0x62706440623L
        0x62706440627L
        0x62706440628L
        0x6270644062aL
        0x6270644062cL
        0x6270644062dL
        0x6270644062fL
        0x62706440633L
        0x62706440639L
        0x62706440642L
        0x62706440645L
        0x62706440648L
        0x6270644064aL
        0x62706450020L
        0x62706460020L
        0x6270646062aL
        0x62800200627L
        0x62900200627L
        0x62900200641L
        0x62900200644L
        0x62900200645L
        0x62900200648L
        0x62a00200627L
        0x62f00200627L
        0x62f06290020L
        0x63100200627L
        0x63106290020L
        0x63300200627L
        0x63900200627L
        0x63906440649L
        0x641064a0020L
        0x64400200627L
        0x64406290020L
        0x64406490020L
        0x644064a0020L
        0x64500200627L
        0x64506270020L
        0x64506290020L
        0x64506460020L
        0x64600200627L
        0x64700200627L
        0x64706270020L
        0x64806270644L
        0x64806460020L
        0x64900200627L
        0x64a00200627L
        0x64a00200645L
        0x64a00200648L
        0x64a06290020L
        0x64a06310020L
        0x64a06460020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
