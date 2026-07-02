.class public Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;
.super Landroid/widget/ImageView;
.source "BookmarkHintButton.java"


# instance fields
.field private final hideHintAnimation:Landroid/view/animation/Animation;

.field private final pageNumber:I

.field private final toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput p4, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->pageNumber:I

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 40
    sget p2, Lcom/amazon/kindle/newsstand/core/R$anim;->hide_bookmark_hint:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hideHintAnimation:Landroid/view/animation/Animation;

    .line 41
    new-instance p2, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$1;-><init>(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    sget p1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_imm_bm_default:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;-><init>(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->pageNumber:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hideHintAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
