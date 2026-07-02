.class final Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRepository.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $libraryItems:Ljava/util/List;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;->$libraryItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$listener:Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;->$libraryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;->onItemsRetrieved(Ljava/util/List;)V

    return-void
.end method
