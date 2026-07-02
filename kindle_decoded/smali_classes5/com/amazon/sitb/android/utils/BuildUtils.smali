.class public Lcom/amazon/sitb/android/utils/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/utils/BuildUtils;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/utils/BuildUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugBuild()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/sitb/android/utils/BuildUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    invoke-interface {v0}, Lcom/amazon/sitb/android/ISamplingLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method
