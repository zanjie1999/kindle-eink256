.class public Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private parent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->parent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    iput-boolean p3, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->isClean:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->isClean:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->parent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->isClean:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->isClean:Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    :goto_0
    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->parent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getBuilder()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->markClean()V

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object v0
.end method

.method public getMessage()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public getMessageOrBuilder()Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public markDirty()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->onChanged()V

    return-void
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0
.end method

.method public setMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->message:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    iget-object p1, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->dispose()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->builder:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0

    :cond_1
    throw v0
.end method
