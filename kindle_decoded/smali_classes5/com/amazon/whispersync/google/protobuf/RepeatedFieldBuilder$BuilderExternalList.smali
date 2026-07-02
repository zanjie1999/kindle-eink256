.class Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TBType;>;",
        "Ljava/util/List<",
        "TBType;>;"
    }
.end annotation


# instance fields
.field builder:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->get(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method incrementModCount()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method
