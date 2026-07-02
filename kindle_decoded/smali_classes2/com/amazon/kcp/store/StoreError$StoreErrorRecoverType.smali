.class public final enum Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;
.super Ljava/lang/Enum;
.source "StoreError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreErrorRecoverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

.field public static final enum DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

.field public static final enum LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

.field public static final enum RELOAD_CURRENT_PAGE:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v1, 0x0

    const-string v2, "RELOAD_CURRENT_PAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->RELOAD_CURRENT_PAGE:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    .line 64
    new-instance v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v2, 0x1

    const-string v3, "LOAD_STORE_FRONT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    .line 65
    new-instance v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    .line 62
    sget-object v5, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->RELOAD_CURRENT_PAGE:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->$VALUES:[Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->$VALUES:[Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    return-object v0
.end method
