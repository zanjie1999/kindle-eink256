.class Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2151
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    .line 2152
    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    .line 2153
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    .line 2154
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->next:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    return-void
.end method
