.class public Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "y"

    .line 466
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const-string v0, "M"

    .line 467
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    const-string v0, "d"

    .line 468
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    const-string v0, "H"

    .line 469
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    const-string v0, "m"

    .line 470
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    const-string v0, "s"

    .line 471
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    const-string v0, "S"

    .line 472
    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method static format([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    array-length v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_a

    .line 421
    aget-object v9, v0, v7

    .line 422
    invoke-virtual {v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 423
    invoke-virtual {v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v9

    .line 424
    instance-of v11, v10, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 425
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    goto :goto_2

    .line 427
    :cond_0
    sget-object v11, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    if-ne v10, v11, :cond_1

    move-wide/from16 v13, p1

    .line 428
    invoke-static {v13, v14, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    :goto_1
    const/4 v8, 0x0

    :goto_2
    move-wide/from16 v5, p11

    goto/16 :goto_7

    :cond_1
    move-wide/from16 v13, p1

    .line 430
    sget-object v11, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v10, v11, :cond_2

    move v15, v7

    move-wide/from16 v6, p3

    .line 431
    invoke-static {v6, v7, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move-wide/from16 v11, p7

    :goto_4
    move-wide/from16 v13, p9

    :goto_5
    move v0, v5

    goto :goto_1

    :cond_2
    move v15, v7

    move-wide/from16 v6, p3

    .line 433
    sget-object v11, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v10, v11, :cond_3

    move-wide/from16 v12, p5

    .line 434
    invoke-static {v12, v13, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p5

    .line 436
    sget-object v14, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v10, v14, :cond_4

    move-wide/from16 v11, p7

    .line 437
    invoke-static {v11, v12, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p7

    .line 439
    sget-object v14, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v10, v14, :cond_5

    move-wide/from16 v13, p9

    .line 440
    invoke-static {v13, v14, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p9

    .line 442
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v10, v0, :cond_6

    move v0, v5

    move-wide/from16 v5, p11

    .line 443
    invoke-static {v5, v6, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    move v0, v5

    move-wide/from16 v5, p11

    .line 445
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v10, v7, :cond_9

    if-eqz v8, :cond_8

    const/4 v7, 0x3

    if-eqz v3, :cond_7

    .line 448
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_7
    const/4 v8, 0x1

    .line 449
    invoke-static {v1, v2, v8, v7}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 451
    :cond_8
    invoke-static {v1, v2, v3, v9}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v8, 0x0

    :cond_9
    :goto_7
    add-int/lit8 v7, v15, 0x1

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 457
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .line 128
    invoke-static/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x5265c00

    .line 137
    div-long v6, p0, v4

    mul-long v4, v4, v6

    sub-long v4, p0, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    move-wide v6, v2

    .line 140
    :goto_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v8, 0x36ee80

    .line 141
    div-long v10, v4, v8

    mul-long v8, v8, v10

    sub-long/2addr v4, v8

    goto :goto_1

    :cond_1
    move-wide v10, v2

    .line 144
    :goto_1
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v8, 0xea60

    .line 145
    div-long v12, v4, v8

    mul-long v8, v8, v12

    sub-long/2addr v4, v8

    goto :goto_2

    :cond_2
    move-wide v12, v2

    .line 148
    :goto_2
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    .line 149
    div-long v8, v4, v1

    mul-long v1, v1, v8

    sub-long/2addr v4, v1

    move-wide/from16 v16, v4

    move-wide v14, v8

    goto :goto_3

    :cond_3
    move-wide v14, v2

    move-wide/from16 v16, v4

    :goto_3
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v6

    move-wide v7, v10

    move-wide v9, v12

    move-wide v11, v14

    move-wide/from16 v13, v16

    move/from16 v15, p3

    .line 153
    invoke-static/range {v0 .. v15}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->format([Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1

    const-string v0, "H:mm:ss.SSS"

    .line 82
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static lexx(Ljava/lang/String;)[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 9

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 488
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 489
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eqz v4, :cond_0

    if-eq v7, v8, :cond_0

    .line 491
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    if-eq v7, v8, :cond_9

    const/16 v8, 0x48

    if-eq v7, v8, :cond_8

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_7

    const/16 v8, 0x53

    if-eq v7, v8, :cond_6

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_4

    const/16 v8, 0x73

    if-eq v7, v8, :cond_3

    const/16 v8, 0x79

    if-eq v7, v8, :cond_2

    if-nez v5, :cond_1

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    new-instance v8, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v5}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 508
    :cond_2
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_2

    .line 523
    :cond_3
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_2

    .line 520
    :cond_4
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_2

    .line 514
    :cond_5
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_2

    .line 526
    :cond_6
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_2

    .line 511
    :cond_7
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_2

    .line 517
    :cond_8
    sget-object v7, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    move-object v5, v2

    move-object v7, v5

    const/4 v4, 0x0

    goto :goto_2

    .line 502
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    new-instance v4, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v4, v5}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_1
    move-object v7, v2

    :goto_2
    if-eqz v7, :cond_c

    if-eqz v6, :cond_b

    .line 537
    invoke-virtual {v6}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_b

    .line 538
    invoke-virtual {v6}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    goto :goto_3

    .line 540
    :cond_b
    new-instance v5, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v5, v7}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    :goto_3
    move-object v5, v2

    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    if-nez v4, :cond_e

    .line 550
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object p0

    .line 548
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched quote in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 0

    .line 462
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const/16 p1, 0x30

    .line 463
    invoke-static {p0, p3, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
