.class public Lcom/amazon/kindle/utils/BookTypeFactory;
.super Ljava/lang/Object;
.source "BookTypeFactory.java"

# interfaces
.implements Lcom/amazon/kcp/library/IBookTypeFactory;


# instance fields
.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/utils/BookTypeFactory;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method


# virtual methods
.method public getBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/utils/BookTypeFactory;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, p1, v2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
