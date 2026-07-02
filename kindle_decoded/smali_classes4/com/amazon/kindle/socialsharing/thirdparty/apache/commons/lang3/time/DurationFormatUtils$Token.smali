.class Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 586
    iput p1, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method static containsTokenWithValue([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 4

    .line 567
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 569
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 634
    instance-of v0, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 635
    check-cast p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_0

    return v1

    .line 639
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v2, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-eq v0, v2, :cond_1

    return v1

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 644
    :cond_2
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 645
    iget-object p1, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 647
    :cond_3
    iget-object p1, p1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method getCount()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .line 605
    iget v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
