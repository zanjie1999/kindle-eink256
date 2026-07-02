.class public final enum Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;
.super Ljava/lang/Enum;
.source "ShareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum ATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum END:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum IMG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum PROG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum UNATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

.field public static final enum WEB:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v1, 0x0

    const-string v2, "UNATT"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->UNATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v2, 0x1

    const-string v3, "ATT"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->ATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v3, 0x2

    const-string v4, "PROG"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->PROG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v4, 0x3

    const-string v5, "BOOK"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v5, 0x4

    const-string v6, "IMG"

    const-string v7, "IMAGE"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->IMG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v6, 0x5

    const-string v7, "WEB"

    invoke-direct {v0, v7, v6, v7}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->WEB:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v7, 0x6

    const-string v8, "END"

    invoke-direct {v0, v8, v7, v8}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->END:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    .line 16
    sget-object v9, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->UNATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->ATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->PROG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->IMG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->WEB:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->$VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->$VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->name:Ljava/lang/String;

    return-object v0
.end method
