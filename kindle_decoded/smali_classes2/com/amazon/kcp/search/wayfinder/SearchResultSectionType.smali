.class public final enum Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;
.super Ljava/lang/Enum;
.source "SearchResultSectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

.field public static final enum CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

.field public static final enum LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

.field public static final enum STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

.field public static final enum SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v1, 0x0

    const-string v2, "SUGGESTIONS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    .line 8
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    .line 9
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v3, 0x2

    const-string v4, "STORE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    .line 10
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v4, 0x3

    const-string v5, "CORRECTION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    .line 6
    sget-object v6, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->STORE:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->$VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->$VALUES:[Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-object v0
.end method
