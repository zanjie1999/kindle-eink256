.class public Lcom/amazon/ebook/util/text/recognizer/GreekRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field private static final el_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/GreekRecognizer;->el_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2003b103bdL
        0x2003b103c0L
        0x2003b303b9L
        0x2003b403b9L
        0x2003b503c0L
        0x2003b70020L
        0x2003ba03b1L
        0x2003bc03b5L
        0x2003bd03b1L
        0x2003bf0020L
        0x2003c003b1L
        0x2003c003bfL
        0x2003c003c1L
        0x2003c303c4L
        0x2003c303c5L
        0x2003c403b7L
        0x2003c403bfL
        0x3af03b10020L
        0x3b1002003b1L
        0x3b1002003c4L
        0x3b103b90020L
        0x3b103bd0020L
        0x3b103c003ccL
        0x3b103c20020L
        0x3b303b903b1L
        0x3b503b90020L
        0x3b503c20020L
        0x3b7002003c4L
        0x3b703bd0020L
        0x3b703c20020L
        0x3b9002003c4L
        0x3b903b10020L
        0x3b903ba03aeL
        0x3b903c20020L
        0x3ba03b103b9L
        0x3ba03b103c4L
        0x3bc03b50020L
        0x3bd002003b1L
        0x3bd002003b5L
        0x3bd002003c0L
        0x3bd03b10020L
        0x3bf03c20020L
        0x3bf03c50020L
        0x3c003bf03c5L
        0x3c003c103bfL
        0x3c003cc0020L
        0x3c2002003b1L
        0x3c2002003b5L
        0x3c2002003baL
        0x3c2002003c0L
        0x3c2002003c4L
        0x3c303b50020L
        0x3c303b70020L
        0x3c303c403bfL
        0x3c403b10020L
        0x3c403b103b9L
        0x3c403b703bdL
        0x3c403b703c2L
        0x3c403b903baL
        0x3c403bf0020L
        0x3c403bf03c5L
        0x3c403c903bdL
        0x3c903bd0020L
        0x3ce03bd0020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
