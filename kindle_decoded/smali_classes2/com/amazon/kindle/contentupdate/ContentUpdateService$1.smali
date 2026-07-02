.class synthetic Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$application$models$internal$TodoItem$Action:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$annotation$IUploadJournalsResult$Status:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$contentupdate$ContentUpdateService$DownloadStatus:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$download$KRXRequestErrorState:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$update$PluginUpdateState$Type:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$model$content$ContentState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1194
    invoke-static {}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->values()[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kcp$application$models$internal$TodoItem$Action:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kcp$application$models$internal$TodoItem$Action:[I

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 999
    :catch_1
    invoke-static {}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->values()[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$download$KRXRequestErrorState:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 959
    :catch_2
    invoke-static {}, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->values()[Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$update$PluginUpdateState$Type:[I

    :try_start_3
    sget-object v3, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$update$PluginUpdateState$Type:[I

    sget-object v3, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v2, 0x3

    :try_start_5
    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$update$PluginUpdateState$Type:[I

    sget-object v4, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 849
    :catch_5
    invoke-static {}, Lcom/amazon/kindle/model/content/ContentState;->values()[Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    :try_start_6
    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 782
    :catch_9
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->values()[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$contentupdate$ContentUpdateService$DownloadStatus:[I

    :try_start_a
    sget-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$contentupdate$ContentUpdateService$DownloadStatus:[I

    sget-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->RETRYABLE_FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$contentupdate$ContentUpdateService$DownloadStatus:[I

    sget-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 686
    :catch_c
    invoke-static {}, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->values()[Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$annotation$IUploadJournalsResult$Status:[I

    :try_start_d
    sget-object v2, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->CONCURRENT_MODIFICATION_DETECTED:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
