.class Lcom/amazon/klo/search/PorterStemmer;
.super Ljava/lang/Object;
.source "PorterStemmer.java"


# static fields
.field private static final INC:I = 0x32


# instance fields
.field private b:[C

.field private i:I

.field private i_end:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [C

    .line 64
    iput-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    .line 66
    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i_end:I

    return-void
.end method

.method private cons(I)Z
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v0, v0, p1

    const/16 v1, 0x61

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x69

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    const/16 v1, 0x79

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v3

    .line 152
    invoke-direct {p0, p1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private cvc(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    .line 259
    invoke-direct {p0, p1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p1, -0x2

    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char p1, v1, p1

    const/16 v1, 0x77

    if-eq p1, v1, :cond_2

    const/16 v1, 0x78

    if-eq p1, v1, :cond_2

    const/16 v1, 0x79

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private doublec(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v2, v1, p1

    add-int/lit8 v3, p1, -0x1

    aget-char v1, v1, v3

    if-eq v2, v1, :cond_1

    return v0

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result p1

    return p1
.end method

.method private ends(Ljava/lang/String;)Z
    .locals 7

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 276
    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 283
    iget-object v5, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    add-int v6, v1, v4

    aget-char v5, v5, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_2
    iget p1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    return v2
.end method

.method public static getStemmedWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 766
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 767
    new-instance v0, Lcom/amazon/klo/search/PorterStemmer;

    invoke-direct {v0}, Lcom/amazon/klo/search/PorterStemmer;-><init>()V

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 772
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 774
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 776
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 778
    invoke-virtual {v0, v5}, Lcom/amazon/klo/search/PorterStemmer;->add(C)V

    .line 779
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 781
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 783
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 790
    invoke-virtual {v0}, Lcom/amazon/klo/search/PorterStemmer;->stem()V

    .line 791
    invoke-virtual {v0}, Lcom/amazon/klo/search/PorterStemmer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 795
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStemmedWords(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v2

    const/4 v3, 0x0

    .line 818
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 820
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 822
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_1

    .line 826
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-nez v5, :cond_2

    if-nez v7, :cond_6

    .line 829
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 831
    invoke-static {v4}, Lcom/amazon/klo/search/PorterStemmer;->getStemmedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 833
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 835
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 837
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    .line 841
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    new-instance v8, Lcom/amazon/kindle/krx/Range;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/amazon/kindle/krx/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private m()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    :goto_0
    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    if-le v1, v2, :cond_0

    return v0

    .line 179
    :cond_0
    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 190
    :goto_1
    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    if-le v1, v2, :cond_2

    return v0

    .line 194
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 204
    :goto_2
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    if-le v1, v0, :cond_3

    return v2

    .line 208
    :cond_3
    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private r(Ljava/lang/String;)V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    invoke-direct {p0, p1}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setto(Ljava/lang/String;)V
    .locals 6

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 298
    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 301
    iget-object v3, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    add-int v4, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget p1, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    return-void
.end method

.method private step1()V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    aget-char v0, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "sses"

    .line 342
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    goto :goto_0

    :cond_0
    const-string v0, "ies"

    .line 346
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "i"

    .line 348
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v3, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    add-int/lit8 v4, v3, -0x1

    aget-char v0, v0, v4

    if-eq v0, v1, :cond_2

    sub-int/2addr v3, v2

    .line 352
    iput v3, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    :cond_2
    :goto_0
    const-string v0, "eed"

    .line 355
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-lez v0, :cond_a

    .line 359
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    goto/16 :goto_1

    :cond_3
    const-string v0, "ed"

    .line 362
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ing"

    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->vowelinstem()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 364
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    const-string v0, "at"

    .line 365
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ate"

    .line 367
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "bl"

    .line 369
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ble"

    .line 371
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "iz"

    .line 373
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ize"

    .line 375
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_7
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->doublec(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    .line 381
    iget-object v3, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v0, v3, v0

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_a

    .line 384
    :cond_8
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    goto :goto_1

    .line 388
    :cond_9
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->cvc(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "e"

    .line 390
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->setto(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private step2()V
    .locals 3

    const-string/jumbo v0, "y"

    .line 399
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->vowelinstem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    const/16 v2, 0x69

    aput-char v2, v0, v1

    :cond_0
    return-void
.end method

.method private step3()V
    .locals 7

    .line 411
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    const/16 v1, 0x61

    const-string v2, "ate"

    if-eq v0, v1, :cond_14

    const/16 v1, 0x63

    if-eq v0, v1, :cond_12

    const/16 v1, 0x65

    const-string v3, "ize"

    if-eq v0, v1, :cond_11

    const/16 v1, 0x67

    if-eq v0, v1, :cond_10

    const/16 v1, 0x6c

    const-string/jumbo v4, "ous"

    const-string v5, "ble"

    const-string v6, "al"

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x73

    const-string v2, "ive"

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "aliti"

    .line 515
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0, v6}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "iviti"

    .line 520
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "biliti"

    .line 525
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 527
    invoke-direct {p0, v5}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "alism"

    .line 493
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    invoke-direct {p0, v6}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "iveness"

    .line 498
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "fulness"

    .line 503
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ful"

    .line 505
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "ousness"

    .line 508
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 510
    invoke-direct {p0, v4}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "ization"

    .line 476
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 478
    invoke-direct {p0, v3}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "ation"

    .line 481
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 483
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "ator"

    .line 486
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 488
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "bli"

    .line 449
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 451
    invoke-direct {p0, v5}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "alli"

    .line 454
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 456
    invoke-direct {p0, v6}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "entli"

    .line 459
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ent"

    .line 461
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "eli"

    .line 464
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "e"

    .line 466
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string/jumbo v0, "ousli"

    .line 469
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 471
    invoke-direct {p0, v4}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string v0, "logi"

    .line 532
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "log"

    .line 534
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    const-string v0, "izer"

    .line 442
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 444
    invoke-direct {p0, v3}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    const-string v0, "enci"

    .line 430
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ence"

    .line 432
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    const-string v0, "anci"

    .line 435
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ance"

    .line 437
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    const-string v0, "ational"

    .line 418
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 420
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_15
    const-string/jumbo v0, "tional"

    .line 423
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "tion"

    .line 425
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    :cond_16
    :goto_0
    return-void
.end method

.method private step4()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    const-string v2, ""

    const-string v3, "ic"

    if-eq v0, v1, :cond_4

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ness"

    .line 583
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 585
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ical"

    .line 571
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    invoke-direct {p0, v3}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ful"

    .line 576
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 578
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "iciti"

    .line 564
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 566
    invoke-direct {p0, v3}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "icate"

    .line 547
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    invoke-direct {p0, v3}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "ative"

    .line 552
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "alize"

    .line 557
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "al"

    .line 559
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->r(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private step5()V
    .locals 5

    .line 596
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char v0, v1, v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x63

    if-eq v0, v1, :cond_17

    const/16 v1, 0x65

    if-eq v0, v1, :cond_15

    const/16 v1, 0x69

    if-eq v0, v1, :cond_13

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_10

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, "ive"

    .line 694
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_1
    const-string/jumbo v0, "ous"

    .line 688
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_2
    const-string v0, "ate"

    .line 678
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v0, "iti"

    .line 682
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_3
    const-string v0, "ism"

    .line 672
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    const-string v0, "ion"

    .line 660
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v3, v1, v0

    const/16 v4, 0x73

    if-eq v3, v4, :cond_1b

    aget-char v0, v1, v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "ou"

    .line 665
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    return-void

    :cond_9
    const-string v0, "ant"

    .line 641
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const-string v0, "ement"

    .line 645
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    const-string v0, "ment"

    .line 649
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    const-string v0, "ent"

    .line 654
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    return-void

    :cond_e
    const-string v0, "ize"

    .line 700
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    return-void

    :cond_10
    const-string v0, "able"

    .line 631
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_0

    :cond_11
    const-string v0, "ible"

    .line 635
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_0

    :cond_12
    return-void

    :cond_13
    const-string v0, "ic"

    .line 625
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_0

    :cond_14
    return-void

    :cond_15
    const-string v0, "er"

    .line 619
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_0

    :cond_16
    return-void

    :cond_17
    const-string v0, "ance"

    .line 609
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_0

    :cond_18
    const-string v0, "ence"

    .line 613
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_0

    :cond_19
    return-void

    :cond_1a
    const-string v0, "al"

    .line 603
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->ends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 708
    :cond_1b
    :goto_0
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-le v0, v2, :cond_1c

    .line 710
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    :cond_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private step6()V
    .locals 4

    .line 718
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    .line 719
    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v0, v1, v0

    const/4 v1, 0x1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    .line 721
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 722
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/klo/search/PorterStemmer;->cvc(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    :cond_0
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    aget-char v0, v0, v2

    const/16 v3, 0x6c

    if-ne v0, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/amazon/klo/search/PorterStemmer;->doublec(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->m()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 729
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    :cond_2
    return-void
.end method

.method private vowelinstem()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->j:I

    if-gt v1, v2, :cond_1

    .line 225
    invoke-direct {p0, v1}, Lcom/amazon/klo/search/PorterStemmer;->cons(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public add(C)V
    .locals 3

    .line 76
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x32

    .line 78
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    aget-char v2, v2, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iput-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v1, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    aput-char p1, v0, v1

    return-void
.end method

.method public stem()V
    .locals 2

    .line 741
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    if-le v0, v1, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step1()V

    .line 745
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step2()V

    .line 746
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step3()V

    .line 747
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step4()V

    .line 748
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step5()V

    .line 749
    invoke-direct {p0}, Lcom/amazon/klo/search/PorterStemmer;->step6()V

    .line 751
    :cond_0
    iget v0, p0, Lcom/amazon/klo/search/PorterStemmer;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i_end:I

    const/4 v0, 0x0

    .line 752
    iput v0, p0, Lcom/amazon/klo/search/PorterStemmer;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/klo/search/PorterStemmer;->b:[C

    iget v2, p0, Lcom/amazon/klo/search/PorterStemmer;->i_end:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
