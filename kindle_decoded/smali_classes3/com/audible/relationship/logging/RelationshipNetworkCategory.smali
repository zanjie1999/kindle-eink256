.class public final enum Lcom/audible/relationship/logging/RelationshipNetworkCategory;
.super Ljava/lang/Enum;
.source "RelationshipNetworkCategory.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/logging/NetworkCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/logging/RelationshipNetworkCategory;",
        ">;",
        "Lcom/audible/hushpuppy/common/logging/NetworkCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/logging/RelationshipNetworkCategory;

.field public static final enum ASIN_PAIR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

.field public static final enum PAGING:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

.field public static final enum SYNC_FILE_ACR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    const/4 v1, 0x0

    const-string v2, "ASIN_PAIR"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/logging/RelationshipNetworkCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->ASIN_PAIR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    .line 21
    new-instance v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    const/4 v2, 0x1

    const-string v3, "PAGING"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/logging/RelationshipNetworkCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->PAGING:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    .line 26
    new-instance v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    const/4 v3, 0x2

    const-string v4, "SYNC_FILE_ACR"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/logging/RelationshipNetworkCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->SYNC_FILE_ACR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    .line 12
    sget-object v5, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->ASIN_PAIR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->PAGING:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->$VALUES:[Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/logging/RelationshipNetworkCategory;
    .locals 1

    .line 12
    const-class v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/logging/RelationshipNetworkCategory;
    .locals 1

    .line 12
    sget-object v0, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->$VALUES:[Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    invoke-virtual {v0}, [Lcom/audible/relationship/logging/RelationshipNetworkCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    return-object v0
.end method
