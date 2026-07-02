.class public final enum Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;
.super Ljava/lang/Enum;
.source "LibraryFilterStateManagerFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

.field public static final enum BACK_ISSUES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

.field public static final enum HOME_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

.field public static final enum LIBRARY:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

.field public static final enum LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;


# instance fields
.field private final persistKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v1, 0x0

    const-string v2, "LIBRARY"

    const-string v3, "KfaFilterStatePersistKey"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_SERIES"

    const-string v4, "SeriesFilterStatePersistKey"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    .line 29
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v3, 0x2

    const-string v4, "BACK_ISSUES"

    const-string v5, "BackIssuesFilterStatePersistKey"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->BACK_ISSUES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    .line 30
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v4, 0x3

    const-string v5, "HOME_SERIES"

    const-string v6, "HomeSeriesFilterStatePersistKey"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->HOME_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    .line 26
    sget-object v6, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->BACK_ISSUES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->$VALUES:[Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->persistKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->$VALUES:[Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    return-object v0
.end method


# virtual methods
.method public getPersistKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->persistKey:Ljava/lang/String;

    return-object v0
.end method
