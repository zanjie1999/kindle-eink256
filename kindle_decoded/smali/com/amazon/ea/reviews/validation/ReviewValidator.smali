.class public Lcom/amazon/ea/reviews/validation/ReviewValidator;
.super Ljava/lang/Object;
.source "ReviewValidator.java"


# static fields
.field private static final CHINESE_CHARS_REQUIRED:I = 0x0

.field private static final CHINESE_UNIQUE_WORDS_REQUIRED:I = 0x0

.field private static final CHINESE_WORDS_REQUIRED:I = 0xa

.field private static final JAPANESE_CHARS_REQUIRED:I = 0x0

.field private static final JAPANESE_UNIQUE_WORDS_REQUIRED:I = 0x0

.field private static final JAPANESE_WORDS_REQUIRED:I = 0x1e

.field private static final LATIN_CHARS_REQUIRED:I = 0x19

.field private static final LATIN_UNIQUE_WORDS_REQUIRED:I = 0x7

.field private static final LATIN_WORDS_REQUIRED:I = 0x14

.field private static final MARKETPLACE_CHINA:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final MARKETPLACE_JAPAN:Ljava/lang/String; = "A1VC38T7YXB528"


# instance fields
.field public final isTwoByteLanguage:Z

.field public final minCharsRequired:I

.field public final minUniqueWordsRequired:I

.field public final minWordsRequired:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AAHKV2X7AFYLW"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    .line 42
    iput p1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minWordsRequired:I

    .line 43
    iput v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minCharsRequired:I

    .line 44
    iput v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minUniqueWordsRequired:I

    .line 45
    iput-boolean v1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->isTwoByteLanguage:Z

    goto :goto_0

    :cond_0
    const-string v0, "A1VC38T7YXB528"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 48
    iput p1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minWordsRequired:I

    .line 49
    iput v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minCharsRequired:I

    .line 50
    iput v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minUniqueWordsRequired:I

    .line 51
    iput-boolean v1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->isTwoByteLanguage:Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

    .line 53
    iput p1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minWordsRequired:I

    const/16 p1, 0x19

    .line 54
    iput p1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minCharsRequired:I

    const/4 p1, 0x7

    .line 55
    iput p1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minUniqueWordsRequired:I

    .line 56
    iput-boolean v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->isTwoByteLanguage:Z

    :goto_0
    return-void
.end method

.method private getUniqueWordsInText(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 3

    .line 85
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "\\s+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 87
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 88
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method private getValidationResultForParams(Lcom/amazon/ea/reviews/data/Review;III)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;
    .locals 6

    .line 111
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-boolean v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->isTwoByteLanguage:Z

    const-string v3, "\\s+"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 122
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    iget v3, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minUniqueWordsRequired:I

    const/4 v5, 0x1

    if-lez v3, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getUniqueWordsInText(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    sub-int/2addr p2, v1

    .line 125
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, v2

    .line 126
    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr p4, v0

    .line 127
    invoke-static {p4, v4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result v1

    if-ge v1, v5, :cond_6

    .line 132
    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 136
    :cond_7
    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    .line 140
    :cond_9
    sget-object p1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez p3, :cond_b

    if-nez p2, :cond_b

    if-eqz p4, :cond_c

    .line 144
    :cond_b
    sget-object p1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_c
    new-instance p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;-><init>(Ljava/util/List;III)V

    return-object p1
.end method


# virtual methods
.method public getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;
    .locals 3

    .line 68
    iget v0, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minWordsRequired:I

    iget v1, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minCharsRequired:I

    iget v2, p0, Lcom/amazon/ea/reviews/validation/ReviewValidator;->minUniqueWordsRequired:I

    .line 69
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForParams(Lcom/amazon/ea/reviews/data/Review;III)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p1

    return-object p1
.end method
