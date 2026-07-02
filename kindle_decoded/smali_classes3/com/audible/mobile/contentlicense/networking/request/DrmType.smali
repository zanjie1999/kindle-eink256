.class public final enum Lcom/audible/mobile/contentlicense/networking/request/DrmType;
.super Ljava/lang/Enum;
.source "DrmType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/request/DrmType;

.field public static final enum ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Adrm"
    .end annotation
.end field

.field public static final enum HLS:Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Hls"
    .end annotation
.end field

.field public static final enum MPEG:Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Mpeg"
    .end annotation
.end field

.field public static final enum PLAY_READY:Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PlayReady"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v1, 0x0

    const-string v2, "ADRM"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    .line 17
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v2, 0x1

    const-string v3, "HLS"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->HLS:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    .line 20
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v3, 0x2

    const-string v4, "PLAY_READY"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->PLAY_READY:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    .line 23
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v4, 0x3

    const-string v5, "MPEG"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->MPEG:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    .line 13
    sget-object v6, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->HLS:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->PLAY_READY:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 0

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 31
    :catch_0
    sget-object p0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/request/DrmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-object v0
.end method
