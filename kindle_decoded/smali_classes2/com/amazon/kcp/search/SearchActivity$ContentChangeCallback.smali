.class public Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/PausableListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContentChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRefresh(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    return-void
.end method

.method public onRefresh(Lcom/amazon/kindle/event/EventType;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    if-ne v0, p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget-object p1, p1, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->refreshSearch()V

    :cond_1
    return-void
.end method
