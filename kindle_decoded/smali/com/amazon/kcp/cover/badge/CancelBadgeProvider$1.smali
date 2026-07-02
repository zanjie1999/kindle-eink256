.class Lcom/amazon/kcp/cover/badge/CancelBadgeProvider$1;
.super Ljava/lang/Object;
.source "CancelBadgeProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;->getOnClickListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider$1;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 35
    sget-object p1, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling download for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider$1;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider$1;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method
