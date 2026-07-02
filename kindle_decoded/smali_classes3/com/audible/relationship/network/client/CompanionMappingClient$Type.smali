.class final enum Lcom/audible/relationship/network/client/CompanionMappingClient$Type;
.super Ljava/lang/Enum;
.source "CompanionMappingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/relationship/network/client/CompanionMappingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/network/client/CompanionMappingClient$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

.field public static final enum ASIN_PAIR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

.field public static final enum PAGING:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

.field public static final enum SYNC_FILE_ACR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 97
    new-instance v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    const/4 v1, 0x0

    const-string v2, "PAGING"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->PAGING:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    .line 101
    new-instance v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    const/4 v2, 0x1

    const-string v3, "ASIN_PAIR"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->ASIN_PAIR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    .line 105
    new-instance v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    const/4 v3, 0x2

    const-string v4, "SYNC_FILE_ACR"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->SYNC_FILE_ACR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    .line 93
    sget-object v5, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->PAGING:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->ASIN_PAIR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->$VALUES:[Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/network/client/CompanionMappingClient$Type;
    .locals 1

    .line 93
    const-class v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/network/client/CompanionMappingClient$Type;
    .locals 1

    .line 93
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->$VALUES:[Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    invoke-virtual {v0}, [Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    return-object v0
.end method
