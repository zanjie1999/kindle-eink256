.class public final enum Lcom/amazon/kcp/cover/badge/BadgeSource;
.super Ljava/lang/Enum;
.source "BadgeSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/cover/badge/BadgeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum HOME:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum SEARCH:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/cover/badge/BadgeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/cover/badge/BadgeSource;

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x0

    const-string v3, "HOME"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->HOME:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x2

    const-string v3, "SERIES_DETAIL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x3

    const-string v3, "COLLECTIONS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x4

    const-string v3, "SEARCH"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->SEARCH:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x5

    const-string v3, "WIDGET"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/cover/badge/BadgeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->UNKNOWN:Lcom/amazon/kcp/cover/badge/BadgeSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->$VALUES:[Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    const-class v0, Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->$VALUES:[Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v0}, [Lcom/amazon/kcp/cover/badge/BadgeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method
