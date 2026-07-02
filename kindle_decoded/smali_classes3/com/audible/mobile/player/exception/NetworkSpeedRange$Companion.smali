.class public final Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;
.super Ljava/lang/Object;
.source "NetworkSpeedRange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exception/NetworkSpeedRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNetwokSpeedRange(J)Lcom/audible/mobile/player/exception/NetworkSpeedRange;
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 132
    sget-object p1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->UNKNOWN:Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    return-object p1

    .line 135
    :cond_0
    invoke-static {}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->values()[Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 136
    invoke-static {v3}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->access$getNetworkSpeed$p(Lcom/audible/mobile/player/exception/NetworkSpeedRange;)J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gtz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_2
    sget-object p1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->HIGH:Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    return-object p1
.end method
