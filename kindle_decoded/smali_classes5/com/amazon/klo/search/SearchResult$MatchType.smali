.class public final enum Lcom/amazon/klo/search/SearchResult$MatchType;
.super Ljava/lang/Enum;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/klo/search/SearchResult$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/klo/search/SearchResult$MatchType;

.field public static final enum BULLS_EYE:Lcom/amazon/klo/search/SearchResult$MatchType;

.field public static final enum FULL:Lcom/amazon/klo/search/SearchResult$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    new-instance v0, Lcom/amazon/klo/search/SearchResult$MatchType;

    const/4 v1, 0x0

    const-string v2, "BULLS_EYE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/klo/search/SearchResult$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/search/SearchResult$MatchType;->BULLS_EYE:Lcom/amazon/klo/search/SearchResult$MatchType;

    .line 141
    new-instance v0, Lcom/amazon/klo/search/SearchResult$MatchType;

    const/4 v2, 0x1

    const-string v3, "FULL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/klo/search/SearchResult$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/search/SearchResult$MatchType;->FULL:Lcom/amazon/klo/search/SearchResult$MatchType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/klo/search/SearchResult$MatchType;

    .line 138
    sget-object v4, Lcom/amazon/klo/search/SearchResult$MatchType;->BULLS_EYE:Lcom/amazon/klo/search/SearchResult$MatchType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/klo/search/SearchResult$MatchType;->$VALUES:[Lcom/amazon/klo/search/SearchResult$MatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/klo/search/SearchResult$MatchType;
    .locals 1

    .line 138
    const-class v0, Lcom/amazon/klo/search/SearchResult$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/search/SearchResult$MatchType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/klo/search/SearchResult$MatchType;
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/klo/search/SearchResult$MatchType;->$VALUES:[Lcom/amazon/klo/search/SearchResult$MatchType;

    invoke-virtual {v0}, [Lcom/amazon/klo/search/SearchResult$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/klo/search/SearchResult$MatchType;

    return-object v0
.end method
