.class public final enum Lcom/amazon/kcp/library/DetailType;
.super Ljava/lang/Enum;
.source "DetailType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/DetailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/DetailType;

.field public static final enum END_YEAR:Lcom/amazon/kcp/library/DetailType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_year"
    .end annotation
.end field

.field public static final enum PART_NUMBER:Lcom/amazon/kcp/library/DetailType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "part_number"
    .end annotation
.end field

.field public static final enum START_YEAR:Lcom/amazon/kcp/library/DetailType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_year"
    .end annotation
.end field

.field public static final enum SUBTITLE:Lcom/amazon/kcp/library/DetailType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_title"
    .end annotation
.end field

.field public static final enum TITLE:Lcom/amazon/kcp/library/DetailType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/library/DetailType;

    new-instance v1, Lcom/amazon/kcp/library/DetailType;

    const/4 v2, 0x0

    const-string v3, "TITLE"

    const-string/jumbo v4, "title"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailType;->TITLE:Lcom/amazon/kcp/library/DetailType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/DetailType;

    const/4 v2, 0x1

    const-string v3, "SUBTITLE"

    const-string/jumbo v4, "sub_title"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailType;->SUBTITLE:Lcom/amazon/kcp/library/DetailType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/DetailType;

    const/4 v2, 0x2

    const-string v3, "PART_NUMBER"

    const-string/jumbo v4, "part_number"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailType;->PART_NUMBER:Lcom/amazon/kcp/library/DetailType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/DetailType;

    const/4 v2, 0x3

    const-string v3, "START_YEAR"

    const-string/jumbo v4, "start_year"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailType;->START_YEAR:Lcom/amazon/kcp/library/DetailType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/DetailType;

    const/4 v2, 0x4

    const-string v3, "END_YEAR"

    const-string v4, "end_year"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailType;->END_YEAR:Lcom/amazon/kcp/library/DetailType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/DetailType;->$VALUES:[Lcom/amazon/kcp/library/DetailType;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/library/DetailType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/DetailType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/DetailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/DetailType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/DetailType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/DetailType;->$VALUES:[Lcom/amazon/kcp/library/DetailType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/DetailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/DetailType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailType{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/DetailType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
