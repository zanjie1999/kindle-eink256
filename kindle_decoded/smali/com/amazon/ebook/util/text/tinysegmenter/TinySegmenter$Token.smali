.class public Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;

    iget-object v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->str:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->str:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->start:I

    iget v2, p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->start:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->end:I

    iget p1, p1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$Token;->end:I

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
