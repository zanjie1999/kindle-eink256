.class public final enum Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;
.super Ljava/lang/Enum;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/IMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMetricsDownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

.field public static final enum DOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

.field public static final enum ERROR:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

.field public static final enum UNDOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    const/4 v1, 0x0

    const-string v2, "DOWNLOADED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->DOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    .line 35
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    const/4 v2, 0x1

    const-string v3, "UNDOWNLOADED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->UNDOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    .line 36
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->ERROR:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    .line 33
    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->DOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->UNDOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    return-object v0
.end method
