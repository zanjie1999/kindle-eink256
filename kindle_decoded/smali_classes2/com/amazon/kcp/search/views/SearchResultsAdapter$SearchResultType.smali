.class public final enum Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;
.super Ljava/lang/Enum;
.source "SearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum CONTENT:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum CONTENT_GROUP:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum HEADER:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum LINK:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

.field public static final enum STORE_LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 34
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v1, 0x0

    const-string v2, "HEADER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->HEADER:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 35
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v2, 0x1

    const-string v3, "CONTENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 36
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v3, 0x2

    const-string v4, "CONTENT_GROUP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT_GROUP:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 37
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v4, 0x3

    const-string v5, "STORE_LOADING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->STORE_LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 38
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v5, 0x4

    const-string v6, "LOADING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 39
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v6, 0x5

    const-string v7, "LINK"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->LINK:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    .line 33
    sget-object v8, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->HEADER:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT_GROUP:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->STORE_LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->$VALUES:[Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->$VALUES:[Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    return-object v0
.end method
