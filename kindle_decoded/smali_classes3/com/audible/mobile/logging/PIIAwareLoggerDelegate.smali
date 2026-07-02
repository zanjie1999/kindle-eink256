.class public final Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;
.super Ljava/lang/Object;
.source "PIIAwareLoggerDelegate.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field public static final PII_MARKER:Lorg/slf4j/Marker;


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PII"

    .line 35
    invoke-static {v0}, Lorg/slf4j/MarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "."

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v2, v1

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not auto-infer class name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Lorg/slf4j/Logger;)V

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "logger must not be null."

    .line 76
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private areAnyParamsPII(Ljava/lang/Object;)Z
    .locals 1

    .line 598
    instance-of v0, p1, Landroid/net/Uri;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/URI;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/audible/mobile/logging/PIIMarked;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 603
    invoke-direct {p0, p1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private varargs areAnyParamsPII([Ljava/lang/Object;)Z
    .locals 4

    .line 608
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 609
    invoke-direct {p0, v3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 531
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->areAnyParamsPII([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
