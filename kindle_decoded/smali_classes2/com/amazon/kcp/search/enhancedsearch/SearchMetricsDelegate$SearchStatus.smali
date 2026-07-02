.class final enum Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
.super Ljava/lang/Enum;
.source "SearchMetricsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SearchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

.field public static final enum COMPLETE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

.field public static final enum INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

.field public static final enum IN_PROGRESS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

.field public static final enum NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 359
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 360
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    const/4 v2, 0x1

    const-string v3, "IN_PROGRESS"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->IN_PROGRESS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 361
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    const/4 v3, 0x2

    const-string v4, "INTERRUPTED"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 362
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->COMPLETE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 358
    sget-object v6, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->IN_PROGRESS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

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

    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 373
    iput-object p3, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
    .locals 1

    .line 358
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
    .locals 1

    .line 358
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->name:Ljava/lang/String;

    return-object v0
.end method
