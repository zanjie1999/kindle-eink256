.class public final enum Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;
.super Ljava/lang/Enum;
.source "SearchRecyclerItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum INLINE_SEARCH_SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum SPELL_CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum STORE_LOADING:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field public static final enum STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

.field private static final values:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;


# instance fields
.field private final section:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v2, 0x0

    const-string v3, "LIBRARY_SECTION_HEADER"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v3, 0x1

    const-string v4, "LIBRARY_RESULT"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v4, 0x2

    const-string v5, "LIBRARY_RESULT_CONTAINER"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v5, 0x3

    const-string v6, "STORE_SECTION_HEADER"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v6, 0x4

    const-string v7, "STORE_RESULT"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v7, 0x5

    const-string v8, "STORE_LOADING"

    invoke-direct {v0, v8, v7, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_LOADING:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 16
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v8, 0x6

    const-string v9, "INLINE_SEARCH_SUGGESTIONS"

    invoke-direct {v0, v9, v8, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->INLINE_SEARCH_SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 17
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v9, 0x7

    const-string v10, "SPELL_CORRECTION"

    invoke-direct {v0, v10, v9, v1}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->SPELL_CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 9
    sget-object v10, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_LOADING:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->INLINE_SEARCH_SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->$VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    .line 21
    invoke-static {}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->values()[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->values:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->section:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-void
.end method

.method public static get(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->values:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->$VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object v0
.end method


# virtual methods
.method public getSection()Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->section:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-object v0
.end method
