.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "TickerChannels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation


# direct methods
.method static final synthetic fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p4, p2

    goto :goto_1

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_3
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 108
    :cond_6
    :goto_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p4, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object p2, p4

    .line 109
    :goto_2
    iput-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1
.end method

.method static final synthetic fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto/16 :goto_6

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto/16 :goto_6

    :cond_3
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    move-wide v10, v9

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    :goto_1
    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-object/from16 v0, p4

    .line 84
    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v10, p0

    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    move-wide/from16 v12, p2

    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    return-object v2

    :cond_7
    move-wide v7, v8

    .line 85
    :goto_2
    invoke-static {v10, v11}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v9

    :goto_3
    add-long/2addr v7, v9

    .line 88
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v6, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {v0, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_8

    return-object v2

    :cond_8
    move-object v3, v0

    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v9, v16

    .line 89
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    :goto_5
    sub-long v13, v9, v11

    const-wide/16 v4, 0x0

    .line 90
    invoke-static {v13, v14, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v13

    cmp-long v15, v13, v4

    if-nez v15, :cond_c

    cmp-long v15, v7, v4

    if-eqz v15, :cond_c

    sub-long v4, v11, v9

    .line 92
    rem-long/2addr v4, v7

    sub-long v4, v7, v4

    add-long v9, v11, v4

    .line 94
    invoke-static {v4, v5}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v4

    iput-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 v0, 0x3

    iput v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_a

    return-object v2

    :cond_a
    :goto_6
    const/4 v11, 0x4

    :cond_b
    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v9, v16

    goto :goto_7

    :cond_c
    const/4 v0, 0x3

    .line 96
    invoke-static {v13, v14}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v4

    iput-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 v11, 0x4

    iput v11, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b

    return-object v2

    :goto_7
    move-object v0, v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    goto :goto_3
.end method
