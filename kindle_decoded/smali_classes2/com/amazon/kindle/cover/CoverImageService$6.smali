.class Lcom/amazon/kindle/cover/CoverImageService$6;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/CoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cover/CoverImageService;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/IListableBook;

.field final synthetic val$coverFetchListener:Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;

.field final synthetic val$existingCoverType:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

.field final synthetic val$size:Lcom/amazon/kindle/cover/ImageSizes$Type;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iput-object p2, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    iput-object p3, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$size:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p4, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$existingCoverType:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    iput-object p5, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$coverFetchListener:Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1171
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/CoverImageService$6;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .locals 5

    .line 1174
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$size:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {v0}, Lcom/amazon/kindle/cover/CoverImageService;->access$400(Lcom/amazon/kindle/cover/CoverImageService;)Lcom/amazon/kindle/cover/db/CoverDBHelper;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$existingCoverType:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/cover/CoverImageService;->access$700(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService$6;->val$coverFetchListener:Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;

    if-eqz v1, :cond_0

    .line 1176
    invoke-interface {v1, v0}, Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;->onCoverFetched(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
