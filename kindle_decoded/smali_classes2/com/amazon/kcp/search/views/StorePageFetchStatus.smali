.class public final enum Lcom/amazon/kcp/search/views/StorePageFetchStatus;
.super Ljava/lang/Enum;
.source "StorePageFetchStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/views/StorePageFetchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/views/StorePageFetchStatus;

.field public static final enum BLOCKED:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

.field public static final enum LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

.field public static final enum NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v1, 0x0

    const-string v2, "LOADING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/search/views/StorePageFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    .line 9
    new-instance v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v2, 0x1

    const-string v3, "NOT_LOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/search/views/StorePageFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    .line 10
    new-instance v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v3, 0x2

    const-string v4, "BLOCKED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/search/views/StorePageFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->BLOCKED:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    .line 7
    sget-object v5, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->$VALUES:[Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/views/StorePageFetchStatus;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/views/StorePageFetchStatus;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->$VALUES:[Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/views/StorePageFetchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    return-object v0
.end method
