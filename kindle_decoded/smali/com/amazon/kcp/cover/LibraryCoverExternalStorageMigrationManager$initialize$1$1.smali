.class final Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LibraryCoverExternalStorageMigrationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/cover/Cover;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kindle/cover/Cover;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;->invoke(Lcom/amazon/kindle/cover/Cover;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/cover/Cover;)Z
    .locals 4

    const-string v0, "cover"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/Cover;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cover.filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;

    iget-object v0, v0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getFilePathDescriptor$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filePathDescriptor.persistentPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
