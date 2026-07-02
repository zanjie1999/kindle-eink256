.class public Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MangaPageChangeListener.java"


# static fields
.field private static final MAX_OFFSET:F = 0.05f


# instance fields
.field private final controller:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

.field private final viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaTouchController;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->controller:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    .line 27
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;)Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-object p0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->controller:Lcom/amazon/kindle/mangaviewer/MangaTouchController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaTouchController;->setIgnoringTouchEvents(Z)V

    .line 36
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;->viewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener$1;-><init>(Lcom/amazon/kindle/mangaviewer/MangaPageChangeListener;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
