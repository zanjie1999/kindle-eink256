.class final Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;
.super Ljava/lang/Object;
.source "LoadableViewProvider.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->loadView(Lcom/amazon/kedu/flashcards/views/LoadableView;Lcom/amazon/kedu/flashcards/loadable/Loader;Landroid/util/LruCache;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener<",
        "TCacheValueType;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cache:Landroid/util/LruCache;

.field final synthetic val$cacheKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/util/LruCache;Ljava/lang/Object;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;->val$cache:Landroid/util/LruCache;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;->val$cacheKey:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCacheValueType;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;->val$cache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;->val$cacheKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
