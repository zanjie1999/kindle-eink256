.class Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;
.super Ljava/lang/Object;
.source "ReleaseAndroidLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidLogWriter"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should never log DEBUG in release!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 59
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should never log VERBOSE in release!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$AndroidLogWriter;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
