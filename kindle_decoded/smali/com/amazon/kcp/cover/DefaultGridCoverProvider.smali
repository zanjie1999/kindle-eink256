.class public Lcom/amazon/kcp/cover/DefaultGridCoverProvider;
.super Ljava/lang/Object;
.source "DefaultGridCoverProvider.java"

# interfaces
.implements Lcom/amazon/kcp/cover/GridCoverProvider;


# static fields
.field private static GRID_COVER_EVENT:Ljava/lang/String; = "CollectionItemSortOrderChangedViaGrid"

.field private static GRID_LOADER_ID:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-static/range {p1 .. p9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getGridCoverEvent()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kcp/cover/DefaultGridCoverProvider;->GRID_COVER_EVENT:Ljava/lang/String;

    return-object v0
.end method

.method public getGridLoaderId()I
    .locals 1

    .line 45
    sget v0, Lcom/amazon/kcp/cover/DefaultGridCoverProvider;->GRID_LOADER_ID:I

    return v0
.end method

.method public newGridCover(Landroid/content/Context;III)Landroid/view/View;
    .locals 0

    .line 23
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public recycleGridCover(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleGridCover(Landroid/view/View;)V

    return-void
.end method
