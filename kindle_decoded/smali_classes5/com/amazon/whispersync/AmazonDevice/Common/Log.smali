.class public final Lcom/amazon/whispersync/AmazonDevice/Common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sLogLevel:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field private static sLogOutput:Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultLogOutput;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultLogOutput;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogOutput:Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;

    .line 7
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelOff:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogLevel:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelError:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelError:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getLogLevel()Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogLevel:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-object v0
.end method

.method public static varargs info(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 42
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->shouldShowMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    .line 89
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 96
    :cond_1
    sget-object p3, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogOutput:Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;

    invoke-virtual {p3, p2, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;->printOutput(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;)V

    return-void
.end method

.method public static setLogLevel(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogLevel:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-void
.end method

.method public static setLogOutput(Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    sput-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogOutput:Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultLogOutput;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultLogOutput;-><init>()V

    sput-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogOutput:Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;

    :goto_0
    return-void
.end method

.method private static shouldShowMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)Z
    .locals 1

    .line 101
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->sLogLevel:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->shouldShowLogWithLevel(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)Z

    move-result p0

    return p0
.end method

.method public static varargs warn(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelWarn:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelWarn:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->printLogMessage(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
