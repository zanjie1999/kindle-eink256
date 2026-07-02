.class public Lcom/amazon/ea/ERLProvider;
.super Ljava/lang/Object;
.source "ERLProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private erl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "EA_ERL"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/ea/ERLProvider;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/amazon/ea/ERLProvider;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/ea/ERLProvider;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 20
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/ea/ERLProvider;->erl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setErl(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/amazon/ea/ERLProvider;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 36
    iput-object p2, p0, Lcom/amazon/ea/ERLProvider;->erl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 33
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
