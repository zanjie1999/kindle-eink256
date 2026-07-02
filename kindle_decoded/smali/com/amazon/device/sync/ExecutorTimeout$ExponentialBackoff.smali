.class Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExecutorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ExecutorTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExponentialBackoff"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;
    }
.end annotation


# static fields
.field private static final EXP_BACKOFF_NETWORK_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_NETWORK_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_NETWORK_MAX_ATTEMPTS_DEFAULT:I = 0x3

.field private static final EXP_BACKOFF_NETWORK_MAX_DEFAULT:I

.field private static final EXP_BACKOFF_NETWORK_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_NETWORK_MIN_DEFAULT:I

.field private static final EXP_BACKOFF_SERVER_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_SERVER_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_SERVER_MAX_ATTEMPTS_DEFAULT:I = 0x3

.field private static final EXP_BACKOFF_SERVER_MAX_DEFAULT:I

.field private static final EXP_BACKOFF_SERVER_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final EXP_BACKOFF_SERVER_MIN_DEFAULT:I


# instance fields
.field private mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

.field private mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MIN_DEFAULT:I

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX_DEFAULT:I

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    sget v6, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MIN_DEFAULT:I

    const-string v7, "com.amazon.device.sync.EXP_BACKOFF_NETWORK_MIN"

    invoke-direct {v0, v1, v7, v6}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    sget v6, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX_DEFAULT:I

    const-string v7, "com.amazon.device.sync.EXP_BACKOFF_NETWORK_MAX"

    invoke-direct {v0, v1, v7, v6}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const/4 v6, 0x3

    const-string v7, "com.amazon.device.sync.EXP_BACKOFF_NETWORK_MAX_ATTEMPTS"

    invoke-direct {v0, v1, v7, v6}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MIN_DEFAULT:I

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX_DEFAULT:I

    .line 55
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    sget v2, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MIN_DEFAULT:I

    const-string v3, "com.amazon.device.sync.EXP_BACKOFF_SERVER_MIN"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 60
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    sget v2, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX_DEFAULT:I

    const-string v3, "com.amazon.device.sync.EXP_BACKOFF_SERVER_MAX"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 65
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.EXP_BACKOFF_SERVER_MAX_ATTEMPTS"

    invoke-direct {v0, v1, v2, v6}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 84
    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/sync/ExecutorTimeout$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dcp/settings/SettingInteger;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/dcp/settings/SettingInteger;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX_ATTEMPTS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-object v0
.end method

.method private createHelper(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;
    .locals 2

    .line 114
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$1;->$SwitchMap$com$amazon$device$sync$ExecutorTimeout$ExponentialBackoff$Reason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 123
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    return-object p1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not yet implemented"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_SERVER_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    return-object p1

    .line 117
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MIN:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->EXP_BACKOFF_NETWORK_MAX:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public isRetriable()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->numberOfRetryAttempts()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-static {v2}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->access$200(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public nextRetryIntervalMs(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    if-eq p1, v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->createHelper(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->nextRetryInterval()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 89
    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->mHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    return-void
.end method
