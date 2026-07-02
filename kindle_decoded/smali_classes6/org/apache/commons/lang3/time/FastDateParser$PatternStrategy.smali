.class abstract Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PatternStrategy"
.end annotation


# instance fields
.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method createPattern(Ljava/lang/String;)V
    .locals 0

    .line 518
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method createPattern(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 514
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    return-void
.end method

.method isNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 2

    .line 534
    iget-object p5, p0, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 535
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p5

    if-nez p5, :cond_0

    .line 536
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return p1

    .line 539
    :cond_0
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    add-int/2addr p5, v1

    invoke-virtual {p4, p5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 540
    invoke-virtual {p3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    return v0
.end method

.method abstract setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
.end method
