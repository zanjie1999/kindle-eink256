.class Lcom/amazon/android/docviewer/mobi/ImageZoomPage$2;
.super Ljava/lang/Object;
.source "ImageZoomPage.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/ImageZoomPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/ImageZoomPage;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/ImageZoomPage;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$2;->this$0:Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 0

    .line 545
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$2;->this$0:Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->updateBookmarkHintVisibility()V

    return-void
.end method
