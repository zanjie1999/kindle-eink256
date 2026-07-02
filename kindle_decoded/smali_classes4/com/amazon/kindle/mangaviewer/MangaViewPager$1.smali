.class Lcom/amazon/kindle/mangaviewer/MangaViewPager$1;
.super Ljava/lang/Object;
.source "MangaViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/MangaViewPager;->handlePositionJump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaViewPager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaViewPager;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaViewPager$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    return-void
.end method
