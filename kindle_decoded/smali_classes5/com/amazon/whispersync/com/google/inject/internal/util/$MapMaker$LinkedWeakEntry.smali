.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedWeakEntry;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$WeakEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedWeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$WeakEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;TK;I",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 986
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$WeakEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 987
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedWeakEntry;->next:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNext()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedWeakEntry;->next:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    return-object v0
.end method
