.class public final enum Lcom/amazon/kindle/store/StorefrontContext1P;
.super Ljava/lang/Enum;
.source "StorefrontContext1P.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/store/StorefrontContext1P;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/store/StorefrontContext1P;

.field public static final enum BOOKS:Lcom/amazon/kindle/store/StorefrontContext1P;

.field public static final enum NEWSSTAND:Lcom/amazon/kindle/store/StorefrontContext1P;

.field private static final storeContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/StorefrontContext1P;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final storefrontName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v0, Lcom/amazon/kindle/store/StorefrontContext1P;

    const-string v1, "ebooks"

    const/4 v2, 0x0

    const-string v3, "BOOKS"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/store/StorefrontContext1P;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->BOOKS:Lcom/amazon/kindle/store/StorefrontContext1P;

    .line 19
    new-instance v0, Lcom/amazon/kindle/store/StorefrontContext1P;

    const-string v3, "periodicals"

    const/4 v4, 0x1

    const-string v5, "NEWSSTAND"

    invoke-direct {v0, v5, v4, v3}, Lcom/amazon/kindle/store/StorefrontContext1P;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->NEWSSTAND:Lcom/amazon/kindle/store/StorefrontContext1P;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/amazon/kindle/store/StorefrontContext1P;

    .line 17
    sget-object v7, Lcom/amazon/kindle/store/StorefrontContext1P;->BOOKS:Lcom/amazon/kindle/store/StorefrontContext1P;

    aput-object v7, v6, v2

    aput-object v0, v6, v4

    sput-object v6, Lcom/amazon/kindle/store/StorefrontContext1P;->$VALUES:[Lcom/amazon/kindle/store/StorefrontContext1P;

    const-string v0, "BOOKSTORE"

    .line 30
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 31
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/amazon/kindle/store/StorefrontContext1P$1;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/store/StorefrontContext1P$1;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->storeContexts:Ljava/util/Map;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/amazon/kindle/store/StorefrontContext1P;->storefrontName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/store/StorefrontContext1P;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/store/StorefrontContext1P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/StorefrontContext1P;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/store/StorefrontContext1P;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->$VALUES:[Lcom/amazon/kindle/store/StorefrontContext1P;

    invoke-virtual {v0}, [Lcom/amazon/kindle/store/StorefrontContext1P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/store/StorefrontContext1P;

    return-object v0
.end method
