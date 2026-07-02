.class final enum Lcom/amazon/kcp/store/StoreFragment$Option;
.super Ljava/lang/Enum;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreFragment$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreFragment$Option;

.field public static final enum EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

.field public static final enum MODAL:Lcom/amazon/kcp/store/StoreFragment$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2306
    new-instance v0, Lcom/amazon/kcp/store/StoreFragment$Option;

    const/4 v1, 0x0

    const-string v2, "EXPLICIT_LOADS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/store/StoreFragment$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreFragment$Option;->EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

    .line 2311
    new-instance v0, Lcom/amazon/kcp/store/StoreFragment$Option;

    const/4 v2, 0x1

    const-string v3, "MODAL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/store/StoreFragment$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreFragment$Option;->MODAL:Lcom/amazon/kcp/store/StoreFragment$Option;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/store/StoreFragment$Option;

    .line 2301
    sget-object v4, Lcom/amazon/kcp/store/StoreFragment$Option;->EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/store/StoreFragment$Option;->$VALUES:[Lcom/amazon/kcp/store/StoreFragment$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreFragment$Option;
    .locals 1

    .line 2301
    const-class v0, Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreFragment$Option;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreFragment$Option;
    .locals 1

    .line 2301
    sget-object v0, Lcom/amazon/kcp/store/StoreFragment$Option;->$VALUES:[Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreFragment$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreFragment$Option;

    return-object v0
.end method
