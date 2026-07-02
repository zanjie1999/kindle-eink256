.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# direct methods
.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 7

    .line 264
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 272
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 273
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    if-ltz p2, :cond_7

    if-ltz p4, :cond_7

    if-gez p5, :cond_1

    goto :goto_2

    :cond_1
    if-lt v0, p5, :cond_7

    if-ge v1, p5, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_6

    add-int/lit8 p5, p2, 0x1

    .line 286
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v1, p4, 0x1

    .line 287
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    return v2

    .line 298
    :cond_4
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {p4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p4

    if-eq p2, p4, :cond_5

    return v2

    :cond_5
    :goto_1
    move p2, p5

    move p5, v0

    move p4, v1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v2
.end method
