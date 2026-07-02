.class final enum Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
.super Ljava/lang/Enum;
.source "ThumbnailScrubber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ThumbnailState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

.field public static final enum LOADING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

.field public static final enum NEEDS_RENDERING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

.field public static final enum READY:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 89
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    const/4 v1, 0x0

    const-string v2, "LOADING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->LOADING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->READY:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    const/4 v3, 0x2

    const-string v4, "NEEDS_RENDERING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->NEEDS_RENDERING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    .line 88
    sget-object v5, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->LOADING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->READY:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->$VALUES:[Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
    .locals 1

    .line 88
    const-class v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->$VALUES:[Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    return-object v0
.end method
