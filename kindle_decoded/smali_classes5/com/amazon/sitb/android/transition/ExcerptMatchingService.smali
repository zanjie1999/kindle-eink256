.class public Lcom/amazon/sitb/android/transition/ExcerptMatchingService;
.super Ljava/lang/Object;
.source "ExcerptMatchingService.java"


# static fields
.field private static final ACCEPTABLE_WORD_OFFSET:I = 0xa

.field private static final MATCHING_WORDS_REQUIRED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOffset([Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    :goto_0
    array-length v2, p1

    add-int/lit8 v3, p3, -0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_2

    add-int v4, v1, v3

    .line 44
    aget-object v4, p1, v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p3, :cond_1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v1

    return v2

    :cond_0
    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const p1, 0x7fffffff

    return p1
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, " "

    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/sitb/android/transition/ExcerptMatchingService;->getOffset([Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0xa

    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method
