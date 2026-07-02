.class final Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;
.super Ljava/lang/Object;
.source "ReaderBottomSheetController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;->this$0:Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;->this$0:Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;->$url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->access$ensureWebViewCacheOnMain(Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;Ljava/lang/String;Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;)V

    return-void
.end method
