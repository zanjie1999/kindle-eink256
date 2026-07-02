.class Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidLogWriter"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public writeError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
