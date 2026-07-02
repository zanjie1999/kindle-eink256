.class public final enum Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
.super Ljava/lang/Enum;
.source "DeeplinkStoreHelperImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorrowResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

.field public static final enum BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

.field public static final enum LIMIT_EXCEEDED:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

.field public static final enum NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    const/4 v2, 0x0

    const-string v3, "BORROW_SUCCESS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    const/4 v2, 0x1

    const-string v3, "LIMIT_EXCEEDED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->LIMIT_EXCEEDED:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    const/4 v2, 0x2

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->UNKNOWN:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    const/4 v2, 0x3

    const-string v3, "NOT_AVAILABLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->$VALUES:[Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
    .locals 1

    const-class v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->$VALUES:[Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    return-object v0
.end method
