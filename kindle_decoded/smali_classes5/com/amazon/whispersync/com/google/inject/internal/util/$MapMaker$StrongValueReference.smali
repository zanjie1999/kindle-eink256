.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
