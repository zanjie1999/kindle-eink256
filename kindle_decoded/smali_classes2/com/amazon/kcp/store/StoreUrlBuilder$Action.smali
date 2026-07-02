.class public final enum Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
.super Ljava/lang/Enum;
.source "StoreUrlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field public static final enum STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 281
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v1, 0x0

    const-string v2, "LEARN"

    const-string v3, "detail"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 285
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v2, 0x1

    const-string v3, "LEARN_SERIES"

    const-string v4, "detail_series"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 290
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v3, 0x2

    const-string v4, "BUY"

    const-string v5, "buy"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 294
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v4, 0x3

    const-string v5, "STORE"

    const-string v6, "store"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 298
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v5, 0x4

    const-string v6, "BROWSE_NODE"

    const-string v7, "browsenode"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 302
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v6, 0x5

    const-string v7, "FEATURE_DOC"

    const-string v8, "featuredoc"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 306
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v7, 0x6

    const-string v8, "SEARCH"

    const-string v9, "search"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    .line 277
    sget-object v9, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

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

    .line 310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 311
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->code:Ljava/lang/String;

    return-void
.end method

.method public static getAction(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    .locals 1

    .line 329
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 331
    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 333
    :cond_1
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 335
    :cond_2
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 337
    :cond_3
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 339
    :cond_4
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    .line 341
    :cond_5
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 342
    sget-object p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    .locals 1

    .line 277
    const-class v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    .locals 1

    .line 277
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->code:Ljava/lang/String;

    return-object v0
.end method
