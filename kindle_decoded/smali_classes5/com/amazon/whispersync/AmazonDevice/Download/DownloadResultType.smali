.class public final enum Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;
.super Ljava/lang/Enum;
.source "DownloadResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

.field public static final enum DownloadResultTypeIOError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

.field public static final enum DownloadResultTypeNetworkError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

.field public static final enum DownloadResultTypeSuccess:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

.field public static final enum DownloadResultTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    const/4 v1, 0x0

    const-string v2, "DownloadResultTypeSuccess"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeSuccess:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    const/4 v2, 0x1

    const-string v3, "DownloadResultTypeNetworkError"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeNetworkError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    const/4 v3, 0x2

    const-string v4, "DownloadResultTypeIOError"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeIOError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    const/4 v4, 0x3

    const-string v5, "DownloadResultTypeUnknownError"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    .line 4
    sget-object v6, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeSuccess:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeNetworkError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeIOError:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    return-object v0
.end method
