.class Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;
.super Ljava/lang/Object;
.source "PlatformBackedContentCatalog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/PlatformBackedContentCatalog;

.field final synthetic val$addToCarousel:Z

.field final synthetic val$itemMetadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/PlatformBackedContentCatalog;Lcom/amazon/kindle/content/ContentMetadata;Z)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->this$0:Lcom/amazon/kcp/library/PlatformBackedContentCatalog;

    iput-object p2, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->val$itemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    iput-boolean p3, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->val$addToCarousel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->this$0:Lcom/amazon/kcp/library/PlatformBackedContentCatalog;

    iget-object v1, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->val$itemMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;->val$addToCarousel:Z

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->access$000(Lcom/amazon/kcp/library/PlatformBackedContentCatalog;Lcom/amazon/kindle/content/ContentMetadata;Z)V

    return-void
.end method
