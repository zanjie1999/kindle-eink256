.class final Lcom/amazon/kcp/library/FalkorProcessesPlugin$initialize$1;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FalkorProcessesPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$initialize$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$initialize$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    const-string v2, "Utils.getFactory().libraryService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->cleanSamples(Lcom/amazon/kindle/content/ILibraryService;)V

    return-void
.end method
