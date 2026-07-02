.class public Lcom/amazon/whispersync/dp/logger/DPLogger;
.super Ljava/lang/Object;
.source "DPLogger.java"


# static fields
.field private static final BUILD_TYPE:Ljava/lang/String;

.field private static final ENG:Ljava/lang/String; = "eng"

.field private static final FORCE_ALL_LOGGING_ON:Z = false

.field protected static final MAX_TAG_SIZE:I = 0x17


# instance fields
.field protected final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->removePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->ensureSafeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->ensureSafeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->ensureSafeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    return-void
.end method

.method private ensureSafeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "DPLogger"

    if-nez p1, :cond_0

    const-string p1, "Got a null DPLogger name; using an empty string instead"

    .line 333
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 336
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

    .line 337
    invoke-static {v0, p1, v3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    return-object p1
.end method

.method private static varargs extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 348
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    .line 352
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static removePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 321
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
.method public debug(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-void
.end method

.method public error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 192
    iget-object p2, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public fatal(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public info(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isVerboseEnabled()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dp/logger/DPLogger;->BUILD_TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public trace(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-void
.end method

.method public verbose(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-void
.end method

.method public warn(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 214
    iget-object p2, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/dp/logger/DPLogger;->mName:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
