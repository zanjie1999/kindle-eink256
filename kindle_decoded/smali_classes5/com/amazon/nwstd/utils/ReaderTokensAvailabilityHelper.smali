.class public Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;
.super Ljava/lang/Object;
.source "ReaderTokensAvailabilityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKENS_READ_RETRY_MS:I = 0x3e8

.field private static final TOKENS_READ_RETRY_NB:I = 0x1e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomerPFM:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mXfsn:Ljava/lang/String;

.field private mXmain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mDeviceType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mCustomerPFM:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXfsn:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXmain:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areTokensLoaded()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mCustomerPFM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXfsn:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXmain:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public preloadReaderData()Z
    .locals 8

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    sget-object v2, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "Preloading reader data"

    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    .line 58
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x1e

    if-ge v5, v6, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->areTokensLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mDeviceType:Ljava/lang/String;

    .line 63
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mCustomerPFM:Ljava/lang/String;

    .line 64
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXfsn:Ljava/lang/String;

    .line 65
    sget-object v6, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v6}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->mXmain:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->areTokensLoaded()Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x3e8

    .line 69
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    const-string v3, "Tokens loading got interrupted"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_1
    sget-object v2, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->areTokensLoaded()Z

    move-result v0

    return v0
.end method
