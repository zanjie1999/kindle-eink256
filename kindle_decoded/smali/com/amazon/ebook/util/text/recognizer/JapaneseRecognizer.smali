.class public Lcom/amazon/ebook/util/text/recognizer/JapaneseRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;


# static fields
.field private static final COMMON:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/JapaneseRecognizer;->COMMON:[I

    return-void

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3002
        0x300c
        0x300d
        0x3042
        0x3044
        0x3046
        0x304b
        0x304c
        0x304d
        0x304f
        0x3051
        0x3053
        0x3055
        0x3057
        0x3059
        0x305f
        0x3060
        0x3063
        0x3066
        0x3067
        0x3068
        0x306a
        0x306b
        0x306e
        0x306f
        0x307e
        0x3082
        0x3089
        0x308a
        0x308b
        0x308c
        0x3092
        0x3093
        0x30a2
        0x30a4
        0x30af
        0x30b0
        0x30b9
        0x30bf
        0x30c3
        0x30c8
        0x30d6
        0x30d7
        0x30e9
        0x30ea
        0x30eb
        0x30ed
        0x30f3
        0x30fb
        0x30fc
        0x4e8b
        0x5206
        0x65e5
        0xff08
        0xff09
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;-><init>()V

    return-void
.end method
