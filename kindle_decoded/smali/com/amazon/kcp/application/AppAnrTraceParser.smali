.class public final Lcom/amazon/kcp/application/AppAnrTraceParser;
.super Ljava/lang/Object;
.source "AppAnrTraceParser.java"


# static fields
.field private static final REGEX_STACK_TRACE_TIME:Ljava/lang/String; = "(\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])) ([2][0-3]|[0-1][0-9]|[1-9]):[0-5][0-9]:([0-5][0-9]|[6][0])"

.field private static final REGEX_STACK_TRACE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/application/AppAnrTraceParser;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AppAnrTraceParser;->TAG:Ljava/lang/String;

    const-string v0, "(\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])) ([2][0-3]|[0-1][0-9]|[1-9]):[0-5][0-9]:([0-5][0-9]|[6][0])"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AppAnrTraceParser;->REGEX_STACK_TRACE_TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLine(Ljava/io/StringWriter;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    const/16 p1, 0xa

    .line 124
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    return-void
.end method

.method private static isStartOfTrace(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cmd line: "

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final parseAnrTrace(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 56
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    .line 59
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    move-object v3, v1

    .line 69
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v4, :cond_1

    .line 70
    invoke-static {v4}, Lcom/amazon/kcp/application/AppAnrTraceParser;->isStartOfTrace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez p0, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    .line 116
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    :try_start_2
    sget-object p0, Lcom/amazon/kcp/application/AppAnrTraceParser;->REGEX_STACK_TRACE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 88
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v5, p0, p2

    if-gtz v5, :cond_4

    goto :goto_1

    .line 96
    :catch_0
    :try_start_4
    sget-object p0, Lcom/amazon/kcp/application/AppAnrTraceParser;->TAG:Ljava/lang/String;

    const-string p1, "Invalid date time format"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v0, v3}, Lcom/amazon/kcp/application/AppAnrTraceParser;->appendLine(Ljava/io/StringWriter;Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v4}, Lcom/amazon/kcp/application/AppAnrTraceParser;->appendLine(Ljava/io/StringWriter;Ljava/lang/String;)V

    .line 104
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 106
    invoke-static {p0}, Lcom/amazon/kcp/application/AppAnrTraceParser;->isStartOfTrace(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 109
    :cond_5
    invoke-static {v0, p0}, Lcom/amazon/kcp/application/AppAnrTraceParser;->appendLine(Ljava/io/StringWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v2, v1

    .line 114
    :goto_5
    :try_start_5
    sget-object p1, Lcom/amazon/kcp/application/AppAnrTraceParser;->TAG:Ljava/lang/String;

    const-string p2, "Error reading crash dump."

    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    .line 116
    :goto_6
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    throw p0
.end method
