.class Lcom/amazon/kindle/cover/CoverImageService$1;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverMetadataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/CoverImageService;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cover/CoverImageService;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 0

    .line 176
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 177
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 178
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object p2

    .line 179
    invoke-interface {p2, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
