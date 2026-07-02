.class public Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;
.super Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;
.source "KCPSDKLog.java"


# static fields
.field private static final PII_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.KCPSDKLog"


# instance fields
.field private mFilterPII:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[PII]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->PII_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->mFilterPII:Z

    return-void
.end method


# virtual methods
.method public getShouldFilterPII()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->mFilterPII:Z

    return v0
.end method

.method public printOutput(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;Lcom/amazon/whispersync/AmazonDevice/Common/LogType;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->PII_TAG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->TAG:Ljava/lang/String;

    .line 24
    :goto_0
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    if-ne p3, v1, :cond_1

    iget-boolean p3, p0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->mFilterPII:Z

    if-eqz p3, :cond_1

    return-void

    .line 30
    :cond_1
    sget-object p3, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog$1;->$SwitchMap$com$AmazonDevice$Common$SdkLogLevel:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 36
    :cond_3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setShouldFilterPII(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->mFilterPII:Z

    return-void
.end method
