.class public Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;
.super Ljava/lang/Object;
.source "XADPCallAfterHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private callAfter:Ljava/util/Date;

.field private callNever:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callAfter:Ljava/util/Date;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callNever:Z

    return-void
.end method

.method private setCallAfter(Ljava/util/Date;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callAfter:Ljava/util/Date;

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callNever:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callAfter:Ljava/util/Date;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callNever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallAfter()Ljava/util/Date;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callAfter:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallNever()Z
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callNever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parseServerValue(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->clear()V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recevied X-ADP-Call-After: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "Never"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->callNever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->setCallAfter(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->getCallAfter()Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 66
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 66
    invoke-direct {p0, v0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->setCallAfter(Ljava/util/Date;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 69
    :catch_1
    :try_start_4
    sget-object v0, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognizable X-ADP-Call-After value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldExecuteRequest()Z
    .locals 6

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->getCallNever()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    return v1

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->getCallAfter()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->getCallAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking web service request until "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->getCallAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ". Time now: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 94
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
