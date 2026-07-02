.class Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer$NGramParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:J = 0xffffffffffffL


# instance fields
.field private hitCount:I

.field private ngram:J

.field private ngramCount:I

.field private ngramList:[J


# direct methods
.method public static unpack([I)[J
    .locals 11

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    aget v4, p0, v1

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    aget v6, p0, v1

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-long v8, v6

    new-instance v6, Ljava/lang/Long;

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    shl-long/2addr v4, v7

    add-long/2addr v8, v4

    add-long/2addr v8, v2

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0xffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
