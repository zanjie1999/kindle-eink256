.class Lcom/amazon/android/widget/ThumbnailItem$2;
.super Ljava/lang/Object;
.source "ThumbnailItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/ThumbnailItem;->initialize(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;IZILcom/amazon/kindle/util/drawing/Dimension;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/ThumbnailItem;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/ThumbnailItem;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem$2;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 160
    iget-object p2, p0, Lcom/amazon/android/widget/ThumbnailItem$2;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    check-cast p1, Lcom/amazon/android/widget/ThumbnailImageView;

    invoke-virtual {p1}, Lcom/amazon/android/widget/ThumbnailImageView;->getIndex()I

    move-result p1

    invoke-static {p2, p1}, Lcom/amazon/android/widget/ThumbnailItem;->access$502(Lcom/amazon/android/widget/ThumbnailItem;I)I

    const/4 p1, 0x0

    return p1
.end method
