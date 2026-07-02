.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;
.super Ljava/lang/Object;
.source "BufferedLogger.java"


# static fields
.field private static final KEY_VALUE_DELIMITER:Ljava/lang/String; = ":"

.field private static final PAIR_END_MARKER:Ljava/lang/String; = ","

.field private static final TOPIC_DELIMITER:Ljava/lang/String; = ";"


# instance fields
.field sBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private flushLogsIfTooLarge()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 129
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Printing Overflown logs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->flushLogsIfTooLarge()V

    .line 100
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public startTopic(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->flushLogsIfTooLarge()V

    .line 83
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
