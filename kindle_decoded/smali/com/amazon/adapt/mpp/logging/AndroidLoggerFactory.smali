.class public Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;,
        Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;
    .locals 3

    .line 14
    new-instance v0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;

    new-instance v1, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogWriter;-><init>(Ljava/lang/String;Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$1;)V

    new-instance p1, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogFilter;

    invoke-direct {p1}, Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogFilter;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;-><init>(Lcom/amazon/adapt/mpp/logging/LogWriter;Lcom/amazon/adapt/mpp/logging/LogFilter;)V

    return-object v0
.end method
