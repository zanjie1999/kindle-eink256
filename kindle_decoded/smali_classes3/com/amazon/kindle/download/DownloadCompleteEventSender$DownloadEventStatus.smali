.class final enum Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;
.super Ljava/lang/Enum;
.source "DownloadCompleteEventSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/DownloadCompleteEventSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DownloadEventStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

.field public static final enum COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

.field public static final enum FAILED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

.field public static final enum FORBIDDEN:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 565
    new-instance v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    const/4 v1, 0x0

    const-string v2, "COMPLETED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    .line 567
    new-instance v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    const/4 v2, 0x1

    const-string v3, "FORBIDDEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FORBIDDEN:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    .line 568
    new-instance v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FAILED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    .line 564
    sget-object v5, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FORBIDDEN:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->$VALUES:[Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 564
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;
    .locals 1

    .line 571
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, p0, :cond_0

    .line 572
    sget-object p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FORBIDDEN:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    return-object p0

    .line 575
    :cond_0
    sget-object p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FAILED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    return-object p0
.end method

.method static isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z
    .locals 1

    .line 579
    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FAILED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FORBIDDEN:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;
    .locals 1

    .line 564
    const-class v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;
    .locals 1

    .line 564
    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->$VALUES:[Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    return-object v0
.end method
