.class Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory$NoOpLogWriter;
.super Ljava/lang/Object;
.source "NoOpLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpLogWriter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NYI-writeDebug"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NYI-writeError"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NYI-writeInfo"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NYI-writeVerbose"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NYI-writeWarn"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
