.class Lcom/amazon/nwstd/bookmark/BookmarkPopup$4;
.super Ljava/lang/Object;
.source "BookmarkPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/bookmark/BookmarkPopup;->initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Lcom/amazon/nwstd/docviewer/IContentInformationProvider;Lcom/amazon/foundation/IIntEventProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$4;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$4;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->scrollToTop()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
