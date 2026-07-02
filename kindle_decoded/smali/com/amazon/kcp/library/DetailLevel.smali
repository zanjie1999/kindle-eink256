.class public final enum Lcom/amazon/kcp/library/DetailLevel;
.super Ljava/lang/Enum;
.source "DetailLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/DetailLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/DetailLevel;

.field public static final enum COLLECTION:Lcom/amazon/kcp/library/DetailLevel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collection"
    .end annotation
.end field

.field public static final enum PRODUCT:Lcom/amazon/kcp/library/DetailLevel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation
.end field


# instance fields
.field private final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/library/DetailLevel;

    new-instance v1, Lcom/amazon/kcp/library/DetailLevel;

    const/4 v2, 0x0

    const-string v3, "COLLECTION"

    const-string v4, "collection"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailLevel;->COLLECTION:Lcom/amazon/kcp/library/DetailLevel;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/DetailLevel;

    const/4 v2, 0x1

    const-string v3, "PRODUCT"

    const-string/jumbo v4, "product"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/library/DetailLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/DetailLevel;->PRODUCT:Lcom/amazon/kcp/library/DetailLevel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/DetailLevel;->$VALUES:[Lcom/amazon/kcp/library/DetailLevel;

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

    iput-object p3, p0, Lcom/amazon/kcp/library/DetailLevel;->level:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/DetailLevel;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/DetailLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/DetailLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/DetailLevel;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/DetailLevel;->$VALUES:[Lcom/amazon/kcp/library/DetailLevel;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/DetailLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/DetailLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amazon/kcp/library/DetailLevel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailLevel{level=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/DetailLevel;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
