.class Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;
.super Ljava/lang/Object;
.source "AutoCompleteCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->writeCache(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

.field final synthetic val$inBookAutoCompleteCache:Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;->this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    iput-object p2, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;->val$inBookAutoCompleteCache:Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;->this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->access$000(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;->val$inBookAutoCompleteCache:Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;

    iget-object v2, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;->this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    invoke-static {v2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->access$100(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->writeObject(Landroid/content/Context;)V

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
