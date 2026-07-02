.class public Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;
.super Ljava/lang/Object;
.source "StartActionsGenreMetadataProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;


# static fields
.field private static final FICTION_STATUS_KEY:Ljava/lang/String; = "fictionStatus"


# instance fields
.field private asinToStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;->asinToStatusMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "fictionStatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;->getFictionStatus(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFictionStatus(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;->asinToStatusMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public registerFictionStatus(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;->asinToStatusMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
