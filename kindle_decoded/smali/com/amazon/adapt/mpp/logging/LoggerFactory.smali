.class public final Lcom/amazon/adapt/mpp/logging/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/adapt/mpp/logging/LoggerFactory;

.field private static final MAX_CLASS_NAME_LENGTH_IN_LOG_TAG:I = 0x16


# instance fields
.field private volatile mFactoryDelegate:Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;

    invoke-direct {v0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;-><init>()V

    sput-object v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->INSTANCE:Lcom/amazon/adapt/mpp/logging/LoggerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->mFactoryDelegate:Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    return-void
.end method

.method public static getFactory()Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->INSTANCE:Lcom/amazon/adapt/mpp/logging/LoggerFactory;

    iget-object v0, v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->mFactoryDelegate:Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    return-object v0
.end method

.method public static final getLogger(Ljava/lang/Class;)Lcom/amazon/adapt/mpp/logging/Logger;
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static final getLogger(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->INSTANCE:Lcom/amazon/adapt/mpp/logging/LoggerFactory;

    iget-object v0, v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->mFactoryDelegate:Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    invoke-interface {v0, p0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;->create(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static setFactory(Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->INSTANCE:Lcom/amazon/adapt/mpp/logging/LoggerFactory;

    iput-object p0, v0, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->mFactoryDelegate:Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;

    return-void
.end method
