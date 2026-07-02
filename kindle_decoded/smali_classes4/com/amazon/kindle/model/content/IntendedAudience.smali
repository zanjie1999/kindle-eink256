.class public final enum Lcom/amazon/kindle/model/content/IntendedAudience;
.super Ljava/lang/Enum;
.source "IntendedAudience.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/IntendedAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/IntendedAudience;

.field public static final enum CHILDREN:Lcom/amazon/kindle/model/content/IntendedAudience;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/model/content/IntendedAudience;

    new-instance v1, Lcom/amazon/kindle/model/content/IntendedAudience;

    const/4 v2, 0x0

    const-string v3, "CHILDREN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/model/content/IntendedAudience;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/model/content/IntendedAudience;->CHILDREN:Lcom/amazon/kindle/model/content/IntendedAudience;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/model/content/IntendedAudience;->$VALUES:[Lcom/amazon/kindle/model/content/IntendedAudience;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IntendedAudience;
    .locals 1

    const-class v0, Lcom/amazon/kindle/model/content/IntendedAudience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/IntendedAudience;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/IntendedAudience;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/model/content/IntendedAudience;->$VALUES:[Lcom/amazon/kindle/model/content/IntendedAudience;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/IntendedAudience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/IntendedAudience;

    return-object v0
.end method
