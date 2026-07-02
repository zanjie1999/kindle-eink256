.class public final enum Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;
.super Ljava/lang/Enum;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DownloadOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

.field public static final enum FAIL_IF_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

.field public static final enum SKIP_IF_LOCAL:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 702
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    const/4 v1, 0x0

    const-string v2, "SKIP_IF_LOCAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->SKIP_IF_LOCAL:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    .line 703
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    const/4 v2, 0x1

    const-string v3, "FAIL_IF_ALREADY_ON_DEVICE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->FAIL_IF_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    .line 700
    sget-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->SKIP_IF_LOCAL:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 701
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;
    .locals 1

    .line 700
    const-class v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;
    .locals 1

    .line 700
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->$VALUES:[Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    invoke-virtual {v0}, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    return-object v0
.end method
