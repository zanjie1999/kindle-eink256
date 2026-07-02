.class public Lcom/amazon/kindle/mangaviewer/ViewModeChange;
.super Ljava/lang/Object;
.source "ViewModeChange.java"


# instance fields
.field private mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

.field private newMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

.field private oldMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->oldMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    .line 12
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->newMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    .line 13
    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-void
.end method


# virtual methods
.method public getMangaViewPager()Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-object v0
.end method

.method public getNewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/ViewModeChange;->newMode:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    return-object v0
.end method
