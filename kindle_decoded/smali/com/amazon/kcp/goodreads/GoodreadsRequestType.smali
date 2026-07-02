.class public final enum Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
.super Ljava/lang/Enum;
.source "BaseGoodreadsShelfWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/goodreads/GoodreadsRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

.field public static final enum GET_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

.field public static final enum UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    new-instance v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    const/4 v2, 0x0

    const-string v3, "GET_SHELF"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->GET_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    const/4 v2, 0x1

    const-string v3, "UPDATE_SHELF"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->$VALUES:[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->$VALUES:[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-object v0
.end method
