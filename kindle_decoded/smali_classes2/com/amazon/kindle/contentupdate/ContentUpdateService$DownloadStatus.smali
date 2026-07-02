.class final enum Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;
.super Ljava/lang/Enum;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

.field public static final enum FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

.field public static final enum RETRYABLE_FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

.field public static final enum SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 843
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    .line 844
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    .line 845
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    const/4 v3, 0x2

    const-string v4, "RETRYABLE_FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->RETRYABLE_FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    .line 842
    sget-object v5, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 842
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static mapFromContentState(Lcom/amazon/kindle/model/content/ContentState;)Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;
    .locals 3

    .line 849
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 858
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Unknown DownloadStatus for ContentState %s"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    const/4 p0, 0x0

    return-object p0

    .line 856
    :cond_0
    sget-object p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-object p0

    .line 853
    :cond_1
    sget-object p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->RETRYABLE_FAILURE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-object p0

    .line 851
    :cond_2
    sget-object p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;
    .locals 1

    .line 842
    const-class v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;
    .locals 1

    .line 842
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    return-object v0
.end method
