.class public final enum Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;
.super Ljava/lang/Enum;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field public static final enum CANCELLED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field public static final enum COMPLETE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field public static final enum INITIAL:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field public static final enum STARTED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field public static final enum WAITING_TO_START:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    const/4 v2, 0x0

    const-string v3, "INITIAL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->INITIAL:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    const/4 v2, 0x1

    const-string v3, "WAITING_TO_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->WAITING_TO_START:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    const/4 v2, 0x2

    const-string v3, "STARTED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->STARTED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    const/4 v2, 0x3

    const-string v3, "COMPLETE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->COMPLETE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    const/4 v2, 0x4

    const-string v3, "CANCELLED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->CANCELLED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->$VALUES:[Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;
    .locals 1

    const-class v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->$VALUES:[Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    return-object v0
.end method
