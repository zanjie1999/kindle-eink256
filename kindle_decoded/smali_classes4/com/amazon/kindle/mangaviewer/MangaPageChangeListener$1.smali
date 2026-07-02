.class Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener$1;
.super Ljava/lang/Object;
.source "MangaPageChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;

    invoke-static {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->access$000(Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;)Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->endPageTurn()V

    return-void
.end method
