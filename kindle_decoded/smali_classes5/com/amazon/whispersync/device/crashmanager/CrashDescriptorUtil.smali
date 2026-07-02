.class public Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;
.super Ljava/lang/Object;
.source "CrashDescriptorUtil.java"


# static fields
.field static final ARTIFACT_BUFFER_SIZE:I = 0x6400

.field private static final MAX_LINES_TO_CHECK_FOR_NATIVE_CRASH:I = 0x32

.field private static REGEX_GROUP_ID:I = 0x0

.field private static final REGEX_STACK_TRACE_DATA:Ljava/lang/String; = "([a-zA-Z0-9_\\.\\$]+(Exception|Error|TerribleFailure))|(at\\s.*\\(.*\\))|#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+^\\r^\\n]+)"

.field private static final REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "CrashDescriptorUtil"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "([a-zA-Z0-9_\\.\\$]+(Exception|Error|TerribleFailure))|(at\\s.*\\(.*\\))|#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+^\\r^\\n]+)"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_GROUP_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCrashDescriptor(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p1, 0x6400

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    new-array p2, p1, [C

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0, p2, v0, p1}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 67
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/CharArrayReader;

    invoke-direct {p1, p2}, Ljava/io/CharArrayReader;-><init>([C)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    .line 75
    sput v0, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_GROUP_ID:I

    if-eqz p2, :cond_4

    const-string p3, "***"

    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x4

    .line 79
    sput p2, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_GROUP_ID:I

    const/4 p2, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    const-string v1, "backtrace:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x32

    if-ge p2, p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_2
    sget-object p3, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    .line 95
    :cond_3
    sget p3, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->REGEX_GROUP_ID:I

    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 100
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gtz p0, :cond_5

    .line 101
    sget-object p0, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "extractJavaCrashInfoFromCrashBody"

    const-string p3, "No stack trace."

    invoke-virtual {p0, p2, p3, p1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_5
    invoke-static {p1}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 64
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    throw p1
.end method

.method public static calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA1"

    .line 52
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calulcateCrashDescriptor(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 41
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
