.class public final enum Lcom/amazon/kcp/store/StoreUrlBuilder$Path;
.super Ljava/lang/Enum;
.source "StoreUrlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreUrlBuilder$Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum COMICS_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum COMICS_SERIES_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum COMICS_STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

.field public static final enum STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 363
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v1, 0x0

    const-string v2, "LEGACY_STORE"

    const-string v3, "gp/kindle/kcp/tos.html"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 368
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v2, 0x1

    const-string v3, "STOREFRONT"

    const-string v4, "kindle-dbs/storefront"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 373
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v3, 0x2

    const-string v4, "COMICS_STOREFRONT"

    const-string v5, "kindle-dbs/comics-store/home"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 378
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v4, 0x3

    const-string v5, "COMICS_DETAIL_PAGE"

    const-string v6, "kindle-dbs/comics-store/idp/"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 385
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v5, 0x4

    const-string v6, "COMICS_SERIES_DETAIL_PAGE"

    const-string v7, "kindle-dbs/comics-store/sdp/"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_SERIES_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 392
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v6, 0x5

    const-string v7, "DETAIL_PAGE"

    const-string v8, "gp/aw/d/"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 397
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v7, 0x6

    const-string v8, "FEATURE_DOC"

    const-string v9, "kindle-dbs/fd/"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 403
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/4 v8, 0x7

    const-string v9, "SEARCH"

    const-string v10, "kindle-dbs/search"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 357
    sget-object v10, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->COMICS_SERIES_DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

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

    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 408
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->path:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Path;
    .locals 1

    .line 357
    const-class v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreUrlBuilder$Path;
    .locals 1

    .line 357
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->$VALUES:[Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->path:Ljava/lang/String;

    return-object v0
.end method
