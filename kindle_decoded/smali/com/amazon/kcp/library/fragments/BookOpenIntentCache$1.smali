.class Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;
.super Landroid/util/LruCache;
.source "BookOpenIntentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Lcom/amazon/android/docviewer/KindleDocViewer;",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/util/Pair;

    check-cast p4, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;->entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/util/Pair<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, p2}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$100(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method
