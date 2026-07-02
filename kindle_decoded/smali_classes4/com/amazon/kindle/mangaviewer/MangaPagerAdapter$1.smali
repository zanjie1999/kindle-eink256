.class Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;
.super Ljava/lang/Object;
.source "MangaPagerAdapter.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->createPageRenderedEventListener()Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentPageUpdated(IZ)V
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$000(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;Z)V

    return-void
.end method

.method public nextPageUpdated(IZ)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updateNextPage(Z)V

    return-void
.end method

.method public previousPageUpdated(IZ)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePreviousPage(Z)V

    return-void
.end method
