.class Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$3;
.super Ljava/lang/Object;
.source "BookOpenIntentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->onSettingsChangeEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$3;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$3;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$300(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method
