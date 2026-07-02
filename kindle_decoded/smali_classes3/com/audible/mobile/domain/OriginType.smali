.class public final enum Lcom/audible/mobile/domain/OriginType;
.super Ljava/lang/Enum;
.source "OriginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/OriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/OriginType;

.field public static final enum AYCE:Lcom/audible/mobile/domain/OriginType;

.field public static final enum AudibleChannels:Lcom/audible/mobile/domain/OriginType;

.field public static final enum AudibleComplimentaryOriginal:Lcom/audible/mobile/domain/OriginType;

.field public static final enum AudibleFreeExcerpt:Lcom/audible/mobile/domain/OriginType;

.field public static final enum AudibleRomance:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Enterprise:Lcom/audible/mobile/domain/OriginType;

.field public static final enum KindleUnlimited:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Prime:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Purchase:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Sharing:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Subscription:Lcom/audible/mobile/domain/OriginType;

.field public static final enum Unknown:Lcom/audible/mobile/domain/OriginType;


# instance fields
.field originType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 8
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v1, 0x0

    const-string v2, "Purchase"

    invoke-direct {v0, v2, v1, v2}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Purchase:Lcom/audible/mobile/domain/OriginType;

    .line 9
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v2, 0x1

    const-string v3, "Subscription"

    invoke-direct {v0, v3, v2, v3}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Subscription:Lcom/audible/mobile/domain/OriginType;

    .line 10
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v3, 0x2

    const-string v4, "AudibleChannels"

    invoke-direct {v0, v4, v3, v4}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->AudibleChannels:Lcom/audible/mobile/domain/OriginType;

    .line 11
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v4, 0x3

    const-string v5, "AYCE"

    invoke-direct {v0, v5, v4, v5}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->AYCE:Lcom/audible/mobile/domain/OriginType;

    .line 12
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v5, 0x4

    const-string v6, "KindleUnlimited"

    invoke-direct {v0, v6, v5, v6}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->KindleUnlimited:Lcom/audible/mobile/domain/OriginType;

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v6, 0x5

    const-string v7, "Enterprise"

    invoke-direct {v0, v7, v6, v7}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Enterprise:Lcom/audible/mobile/domain/OriginType;

    .line 14
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v7, 0x6

    const-string v8, "Prime"

    invoke-direct {v0, v8, v7, v8}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Prime:Lcom/audible/mobile/domain/OriginType;

    .line 15
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/4 v8, 0x7

    const-string v9, "Sharing"

    invoke-direct {v0, v9, v8, v9}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Sharing:Lcom/audible/mobile/domain/OriginType;

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/16 v9, 0x8

    const-string v10, "AudibleComplimentaryOriginal"

    invoke-direct {v0, v10, v9, v10}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->AudibleComplimentaryOriginal:Lcom/audible/mobile/domain/OriginType;

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/16 v10, 0x9

    const-string v11, "AudibleRomance"

    invoke-direct {v0, v11, v10, v11}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->AudibleRomance:Lcom/audible/mobile/domain/OriginType;

    .line 18
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const/16 v11, 0xa

    const-string v12, "AudibleFreeExcerpt"

    invoke-direct {v0, v12, v11, v12}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->AudibleFreeExcerpt:Lcom/audible/mobile/domain/OriginType;

    .line 19
    new-instance v0, Lcom/audible/mobile/domain/OriginType;

    const-string v12, "Unknown"

    const/16 v13, 0xb

    const-string v14, "Unknown"

    invoke-direct {v0, v12, v13, v14}, Lcom/audible/mobile/domain/OriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/OriginType;->Unknown:Lcom/audible/mobile/domain/OriginType;

    const/16 v12, 0xc

    new-array v12, v12, [Lcom/audible/mobile/domain/OriginType;

    .line 6
    sget-object v13, Lcom/audible/mobile/domain/OriginType;->Purchase:Lcom/audible/mobile/domain/OriginType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->Subscription:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->AudibleChannels:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->AYCE:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->KindleUnlimited:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->Enterprise:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->Prime:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->Sharing:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->AudibleComplimentaryOriginal:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->AudibleRomance:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v10

    sget-object v1, Lcom/audible/mobile/domain/OriginType;->AudibleFreeExcerpt:Lcom/audible/mobile/domain/OriginType;

    aput-object v1, v12, v11

    const/16 v1, 0xb

    aput-object v0, v12, v1

    sput-object v12, Lcom/audible/mobile/domain/OriginType;->$VALUES:[Lcom/audible/mobile/domain/OriginType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/audible/mobile/domain/OriginType;->originType:Ljava/lang/String;

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/OriginType;
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/domain/OriginType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/OriginType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 41
    :catch_0
    sget-object p0, Lcom/audible/mobile/domain/OriginType;->Unknown:Lcom/audible/mobile/domain/OriginType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/OriginType;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/domain/OriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/OriginType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/OriginType;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/domain/OriginType;->$VALUES:[Lcom/audible/mobile/domain/OriginType;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/OriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/OriginType;

    return-object v0
.end method
