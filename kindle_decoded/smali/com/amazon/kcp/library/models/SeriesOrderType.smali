.class public final enum Lcom/amazon/kcp/library/models/SeriesOrderType;
.super Ljava/lang/Enum;
.source "SeriesOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/models/SeriesOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/SeriesOrderType;

.field public static final Companion:Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;

.field public static final enum ORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

.field public static final enum UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/library/models/SeriesOrderType;

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesOrderType;

    const/4 v2, 0x0

    const-string v3, "UNORDERED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesOrderType;

    const/4 v2, 0x1

    const-string v3, "ORDERED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesOrderType;->ORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->$VALUES:[Lcom/amazon/kcp/library/models/SeriesOrderType;

    new-instance v0, Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->Companion:Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;

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

.method public static final fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->Companion:Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/models/SeriesOrderType$Companion;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/models/SeriesOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->$VALUES:[Lcom/amazon/kcp/library/models/SeriesOrderType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/SeriesOrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-object v0
.end method
