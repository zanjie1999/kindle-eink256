.class public Lcom/amazon/kcp/sync/SyncMessageManager;
.super Ljava/lang/Object;
.source "SyncMessageManager.java"


# static fields
.field private static final MESSAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const-class v0, Lcom/amazon/kcp/sync/SyncMessageManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    .line 38
    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_full_in_progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FULL:IN_PROGRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_full_success:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FULL:SUCCESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_full_error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FULL:ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_full_canceled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FULL:CANCELED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_upload_in_progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPLOAD:IN_PROGRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_upload_success:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPLOAD:SUCCESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_upload_error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPLOAD:ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_upload_canceled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPLOAD:CANCELED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_download_in_progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DOWNLOAD:IN_PROGRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_download_success:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DOWNLOAD:SUCCESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_download_error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DOWNLOAD:ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_download_canceled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DOWNLOAD:CANCELED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_metadata_in_progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "METADATA:IN_PROGRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_metadata_success:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "METADATA:SUCCESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_metadata_error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "METADATA:ERROR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_metadata_canceled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "METADATA:CANCELED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncString(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/application/sync/internal/SyncResult;)Ljava/lang/String;
    .locals 3

    .line 69
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v1, ""

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne p1, v0, :cond_1

    const-string p1, "METADATA:"

    goto :goto_2

    .line 73
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne p1, v0, :cond_3

    const-string p1, "DOWNLOAD:"

    goto :goto_2

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object p1, v1

    goto :goto_2

    :cond_4
    :goto_0
    const-string p1, "UPLOAD:"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "FULL:"

    .line 84
    :goto_2
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq p2, v0, :cond_a

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p2, v0, :cond_6

    goto :goto_3

    .line 86
    :cond_6
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p2, v0, :cond_7

    const-string v1, "SUCCESS"

    goto :goto_4

    .line 88
    :cond_7
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p2, v0, :cond_8

    const-string v1, "ERROR"

    goto :goto_4

    .line 90
    :cond_8
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p2, v0, :cond_9

    const-string v1, "CANCELED"

    goto :goto_4

    .line 93
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_4

    :cond_a
    :goto_3
    const-string v1, "IN_PROGRESS"

    .line 96
    :goto_4
    sget-object p2, Lcom/amazon/kcp/sync/SyncMessageManager;->MESSAGE_MAP:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 98
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget v0, Lcom/amazon/kindle/krl/R$string;->sync_message_time:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
