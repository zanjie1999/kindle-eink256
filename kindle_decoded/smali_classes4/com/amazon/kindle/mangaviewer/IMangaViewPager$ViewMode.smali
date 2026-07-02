.class public final enum Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
.super Ljava/lang/Enum;
.source "IMangaViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

.field public static final enum FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

.field public static final enum VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 163
    new-instance v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v1, 0x0

    const-string v2, "FULL_SCREEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    new-instance v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v2, 0x1

    const-string v3, "VIRTUAL_PANEL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    .line 162
    sget-object v4, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->$VALUES:[Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
    .locals 1

    .line 162
    const-class v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
    .locals 1

    .line 162
    sget-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->$VALUES:[Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    return-object v0
.end method
