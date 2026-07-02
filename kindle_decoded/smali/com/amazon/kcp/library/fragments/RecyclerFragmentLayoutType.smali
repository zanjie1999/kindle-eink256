.class public final enum Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;
.super Ljava/lang/Enum;
.source "AbstractRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field public static final enum DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field public static final enum GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field public static final enum LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    new-instance v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    const/4 v2, 0x0

    const-string v3, "LIST"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    const/4 v2, 0x1

    const-string v3, "GRID"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    const/4 v2, 0x2

    const-string v3, "DETAILS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->$VALUES:[Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->$VALUES:[Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-object v0
.end method
