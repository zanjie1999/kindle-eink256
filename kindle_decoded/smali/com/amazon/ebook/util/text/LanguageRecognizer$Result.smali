.class public Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/LanguageRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field confidence:I

.field language:Ljava/lang/String;


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;

    iget v0, p1, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->confidence:I

    iget v2, p0, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->confidence:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->language:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/ebook/util/text/LanguageTag;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
