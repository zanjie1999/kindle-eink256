.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final absolutePositionInBook:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 38
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAbsolutePositionInBook()D
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Position :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->absolutePositionInBook:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
