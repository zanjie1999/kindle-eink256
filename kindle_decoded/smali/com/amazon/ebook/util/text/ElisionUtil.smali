.class public Lcom/amazon/ebook/util/text/ElisionUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkElision(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2019

    if-ne v5, v6, :cond_3

    :cond_1
    if-nez v4, :cond_2

    invoke-static {p2, p1}, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->getInstance(ILjava/lang/String;)Lcom/amazon/ebook/util/text/stopword/StopWordList;

    move-result-object v4

    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/ebook/util/text/stopword/StopWordList;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p1, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p1, v2, v3, p0, v0}, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;-><init>(IILjava/lang/String;Lcom/amazon/ebook/util/text/ElisionUtil$1;)V

    return-object p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method
