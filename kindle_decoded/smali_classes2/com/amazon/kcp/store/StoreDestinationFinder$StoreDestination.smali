.class public final enum Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
.super Ljava/lang/Enum;
.source "StoreDestinationFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreDestinationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreDestination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

.field public static final enum ANYWHERE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

.field public static final enum RETAIL_WEB:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

.field public static final enum TOS:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    const/4 v1, 0x0

    const-string v2, "TOS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->TOS:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    .line 24
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    const/4 v2, 0x1

    const-string v3, "ANYWHERE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->ANYWHERE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    .line 25
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    const/4 v3, 0x2

    const-string v4, "RETAIL_WEB"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->RETAIL_WEB:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    .line 22
    sget-object v5, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->TOS:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->ANYWHERE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->$VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->$VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object v0
.end method
