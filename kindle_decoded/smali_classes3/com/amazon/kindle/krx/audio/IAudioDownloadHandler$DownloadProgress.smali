.class public final enum Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
.super Ljava/lang/Enum;
.source "IAudioDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

.field public static final enum CANCELLED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

.field public static final enum COMPLETED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

.field public static final enum IN_ERROR:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

.field public static final enum IN_PROGRESS:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

.field public static final enum PAUSED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v1, 0x0

    const-string v2, "IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->IN_PROGRESS:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    new-instance v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v2, 0x1

    const-string v3, "COMPLETED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->COMPLETED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    new-instance v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v3, 0x2

    const-string v4, "IN_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->IN_ERROR:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    new-instance v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->PAUSED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    new-instance v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v5, 0x4

    const-string v6, "CANCELLED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->CANCELLED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    .line 15
    sget-object v7, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->IN_PROGRESS:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->COMPLETED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->IN_ERROR:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->PAUSED:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->$VALUES:[Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->$VALUES:[Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;

    return-object v0
.end method
