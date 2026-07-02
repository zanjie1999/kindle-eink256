.class public final enum Lcom/amazon/klo/search/SearchResult$Style;
.super Ljava/lang/Enum;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/klo/search/SearchResult$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/klo/search/SearchResult$Style;

.field public static final enum COLLAPSED:Lcom/amazon/klo/search/SearchResult$Style;

.field public static final enum EXPANDED:Lcom/amazon/klo/search/SearchResult$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 124
    new-instance v0, Lcom/amazon/klo/search/SearchResult$Style;

    const/4 v1, 0x0

    const-string v2, "EXPANDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/klo/search/SearchResult$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/search/SearchResult$Style;->EXPANDED:Lcom/amazon/klo/search/SearchResult$Style;

    .line 125
    new-instance v0, Lcom/amazon/klo/search/SearchResult$Style;

    const/4 v2, 0x1

    const-string v3, "COLLAPSED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/klo/search/SearchResult$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/search/SearchResult$Style;->COLLAPSED:Lcom/amazon/klo/search/SearchResult$Style;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/klo/search/SearchResult$Style;

    .line 122
    sget-object v4, Lcom/amazon/klo/search/SearchResult$Style;->EXPANDED:Lcom/amazon/klo/search/SearchResult$Style;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/klo/search/SearchResult$Style;->$VALUES:[Lcom/amazon/klo/search/SearchResult$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/klo/search/SearchResult$Style;
    .locals 1

    .line 122
    const-class v0, Lcom/amazon/klo/search/SearchResult$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/search/SearchResult$Style;

    return-object p0
.end method

.method public static values()[Lcom/amazon/klo/search/SearchResult$Style;
    .locals 1

    .line 122
    sget-object v0, Lcom/amazon/klo/search/SearchResult$Style;->$VALUES:[Lcom/amazon/klo/search/SearchResult$Style;

    invoke-virtual {v0}, [Lcom/amazon/klo/search/SearchResult$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/klo/search/SearchResult$Style;

    return-object v0
.end method
