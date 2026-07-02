.class public final enum Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;
.super Ljava/lang/Enum;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_ANNOTATION_SYNC_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_ANNOTATION_UPLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_CONTENT_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_DUPLICATE_UPDATE_REQUEST:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_FILE_SYSTEM_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_INSUFFICIENT_SPACE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_LPR_RETENTION:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_OTHER:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_READER_CANCELLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_SHARED_CONTENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_SIDECAR_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum FAILED_SILENT_UPDATE_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

.field public static final enum SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1117
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1118
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v2, 0x1

    const-string v3, "FAILED_INSUFFICIENT_SPACE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_INSUFFICIENT_SPACE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1119
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v3, 0x2

    const-string v4, "FAILED_DOWNLOAD_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1120
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v4, 0x3

    const-string v5, "FAILED_SIDECAR_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SIDECAR_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1121
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v5, 0x4

    const-string v6, "FAILED_CONTENT_NOT_PRESENT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1122
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v6, 0x5

    const-string v7, "FAILED_FILE_SYSTEM_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_FILE_SYSTEM_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1123
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v7, 0x6

    const-string v8, "FAILED_READER_CANCELLED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_READER_CANCELLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1124
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/4 v8, 0x7

    const-string v9, "FAILED_SHARED_CONTENT"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SHARED_CONTENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1125
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v9, 0x8

    const-string v10, "FAILED_CONTENT_ALREADY_ON_DEVICE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1126
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v10, 0x9

    const-string v11, "FAILED_LPR_RETENTION"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_LPR_RETENTION:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1127
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v11, 0xa

    const-string v12, "FAILED_ANNOTATION_SYNC_DISABLED"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_SYNC_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1128
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v12, 0xb

    const-string v13, "FAILED_ANNOTATION_UPLOAD_ERROR"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_UPLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1129
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v13, 0xc

    const-string v14, "FAILED_DUPLICATE_UPDATE_REQUEST"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DUPLICATE_UPDATE_REQUEST:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1130
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v14, 0xd

    const-string v15, "FAILED_SILENT_UPDATE_DISABLED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SILENT_UPDATE_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1131
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v15, 0xe

    const-string v14, "FAILED_OTHER"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_OTHER:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    .line 1115
    sget-object v16, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_INSUFFICIENT_SPACE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SIDECAR_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_FILE_SYSTEM_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_READER_CANCELLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SHARED_CONTENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_LPR_RETENTION:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_SYNC_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_UPLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DUPLICATE_UPDATE_REQUEST:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SILENT_UPDATE_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;
    .locals 1

    .line 1115
    const-class v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;
    .locals 1

    .line 1115
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-virtual {v0}, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    return-object v0
.end method
