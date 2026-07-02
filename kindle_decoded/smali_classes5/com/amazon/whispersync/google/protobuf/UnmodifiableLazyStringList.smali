.class public Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/google/protobuf/LazyStringList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;)Lcom/amazon/whispersync/google/protobuf/LazyStringList;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getByteString(I)Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/google/protobuf/LazyStringList;->getByteString(I)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/amazon/whispersync/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
