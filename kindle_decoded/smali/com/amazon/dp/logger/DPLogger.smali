.class public Lcom/amazon/dp/logger/DPLogger;
.super Lcom/amazon/dp/logger/DPLoggerBase;
.source "DPLogger.java"


# static fields
.field private static final BUILD_TYPE:Ljava/lang/String;

.field private static final ENG:Ljava/lang/String; = "eng"

.field private static final FORCE_ALL_LOGGING_ON:Z = false


# instance fields
.field protected final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/amazon/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/amazon/dp/logger/DPLoggerBase;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/dp/logger/DPLogger;->removePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/dp/logger/DPLogger;->ensureSafeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amazon/dp/logger/DPLoggerBase;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/dp/logger/DPLogger;->ensureSafeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    return-void
.end method

.method private ensureSafeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "DPLogger"

    if-nez p1, :cond_0

    const-string p1, "Got a null DPLogger name; using an empty string instead"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "original name"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    const-string/jumbo v1, "truncated name"

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    const-string p1, "Name was too long. Truncating"

    .line 176
    invoke-static {v0, p1, v3}, Lcom/amazon/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    return-object p1
.end method

.method private static removePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected isEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;)Z
    .locals 5

    .line 98
    sget-object v0, Lcom/amazon/dp/logger/DPLogger$1;->$SwitchMap$com$amazon$dp$logger$DPLoggerBase$DPLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 124
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/amazon/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v4, 0x0

    :cond_5
    return v4
.end method

.method protected log(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Lcom/amazon/dp/logger/DPFormattedMessage;)V
    .locals 2

    .line 129
    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/amazon/dp/logger/DPLogger$1;->$SwitchMap$com$amazon$dp$logger$DPLoggerBase$DPLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 148
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 144
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 140
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    .line 136
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_8
    iget-object p1, p0, Lcom/amazon/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    .line 132
    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_a
    invoke-virtual {p2}, Lcom/amazon/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method
