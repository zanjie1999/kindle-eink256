.class public Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;
.super Lcom/amazon/android/docviewer/BookSearchResult;
.source "BookSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultLabel"
.end annotation


# instance fields
.field public final isSectionHeader:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p2

    move v6, p2

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/BookSearchResult;-><init>(Ljava/lang/String;IIIIII)V

    .line 45
    iput-boolean p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;->isSectionHeader:Z

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 0

    return-void
.end method
