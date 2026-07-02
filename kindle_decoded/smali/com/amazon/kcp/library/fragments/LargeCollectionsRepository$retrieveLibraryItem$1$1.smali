.class final Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRepository.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $libraryItem:Lcom/amazon/kindle/collections/dto/ICollection;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;->$libraryItem:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;->$libraryItem:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;->onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V

    return-void
.end method
