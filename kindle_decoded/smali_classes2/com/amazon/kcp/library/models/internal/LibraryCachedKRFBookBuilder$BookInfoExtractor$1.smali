.class Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;
.super Ljava/lang/Object;
.source "LibraryCachedKRFBookBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/jni/KindleReaderJNI$CallContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->call()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;->this$1:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;->this$1:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->this$0:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->access$100(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;)Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;->this$1:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->access$000(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->addInvalidBook(Ljava/lang/String;)Z

    return-void
.end method
