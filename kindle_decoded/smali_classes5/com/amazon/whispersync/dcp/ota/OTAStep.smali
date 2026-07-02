.class public final enum Lcom/amazon/whispersync/dcp/ota/OTAStep;
.super Ljava/lang/Enum;
.source "OTAStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTAStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field public static final enum ProcessManfiest:Lcom/amazon/whispersync/dcp/ota/OTAStep;


# instance fields
.field private final mStep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v2, 0x1

    const-string v3, "DownloadManifest"

    const-string v4, "OTAStepDownloadManifest"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v3, 0x2

    const-string v4, "InstallManifest"

    const-string v5, "OTAStepInstallManifest"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v4, 0x3

    const-string v5, "ProcessManfiest"

    const-string v6, "OTAStepProcessManifest"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->ProcessManfiest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v5, 0x4

    const-string v6, "Download"

    const-string v7, "OTAStepDownload"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v6, 0x5

    const-string v7, "Install"

    const-string v8, "OTAStepInstall"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/dcp/ota/OTAStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 4
    sget-object v8, Lcom/amazon/whispersync/dcp/ota/OTAStep;->None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAStep;->ProcessManfiest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whispersync/dcp/ota/OTAStep;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->mStep:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTAStep;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTAStep;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTAStep;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAStep;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTAStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTAStep;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAStep;->mStep:Ljava/lang/String;

    return-object v0
.end method
