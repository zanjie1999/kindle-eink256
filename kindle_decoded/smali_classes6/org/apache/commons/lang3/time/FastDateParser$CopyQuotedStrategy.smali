.class Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 656
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 669
    :goto_0
    iget-object p5, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-ge p2, p5, :cond_2

    .line 670
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    add-int/2addr p5, p2

    .line 671
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p5, v0, :cond_0

    .line 672
    invoke-virtual {p4, p5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return p1

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, p5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_1

    .line 676
    invoke-virtual {p4, p5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 680
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p4, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 p1, 0x1

    return p1
.end method
