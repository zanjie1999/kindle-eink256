.class public Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;
.super Ljava/lang/Object;
.source "IBookSearchController.java"

# interfaces
.implements Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/IBookSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBookSearchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchResultCount(Lcom/amazon/kcp/search/IBookSearchController;I)V
    .locals 0

    return-void
.end method

.method public onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V
    .locals 0

    return-void
.end method

.method public onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
    .locals 0

    return-void
.end method

.method public onTrackerReportState(Lcom/amazon/kcp/search/IBookSearchController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTrackerReset(Lcom/amazon/kcp/search/IBookSearchController;)V
    .locals 0

    return-void
.end method

.method public onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
    .locals 0

    return-void
.end method
