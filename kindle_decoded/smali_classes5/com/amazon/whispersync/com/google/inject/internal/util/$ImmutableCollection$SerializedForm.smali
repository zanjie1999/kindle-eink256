.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$ArrayImmutableCollection;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$ArrayImmutableCollection;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
