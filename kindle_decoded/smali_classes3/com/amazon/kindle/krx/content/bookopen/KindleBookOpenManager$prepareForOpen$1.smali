.class final Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;
.super Ljava/lang/Object;
.source "KindleBookOpenManager.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->prepareForOpen$krxsdk_release(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/content/ContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bookID:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;->$bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/String;
    .locals 2

    .line 175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;->$bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->getSmallCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
