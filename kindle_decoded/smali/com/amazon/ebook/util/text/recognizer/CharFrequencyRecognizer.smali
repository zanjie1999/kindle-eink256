.class public Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/ebook/util/text/LanguageRecognizer$Recognizer;


# static fields
.field private static final UNIQUE_CHAR_COUNT_THRESHOLD_PERCENT:D = 0.01


# instance fields
.field private badCharCount:I

.field private commonCharCount:I

.field private confidence:I

.field private multiByteCharCount:I

.field private singleByteCharCount:I

.field private totalCharCount:I

.field private uniqueCharCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->confidence:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->totalCharCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->badCharCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->singleByteCharCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->multiByteCharCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->commonCharCount:I

    iput v0, p0, Lcom/amazon/ebook/util/text/recognizer/CharFrequencyRecognizer;->uniqueCharCount:I

    return-void
.end method
