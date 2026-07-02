.class public final enum Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;
.super Ljava/lang/Enum;
.source "HushpuppyDownloadType.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloadType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;",
        ">;",
        "Lcom/audible/mobile/downloader/factory/DownloadType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

.field public static final enum GENERIC:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

.field public static final enum STATS:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    const/4 v1, 0x0

    const-string v2, "GENERIC"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->GENERIC:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    .line 20
    new-instance v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    const/4 v2, 0x1

    const-string v3, "STATS"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->STATS:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    .line 11
    sget-object v4, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->GENERIC:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->$VALUES:[Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->$VALUES:[Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
