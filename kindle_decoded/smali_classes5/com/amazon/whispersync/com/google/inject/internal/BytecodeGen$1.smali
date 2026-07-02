.class final Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;
.super Ljava/lang/Object;
.source "BytecodeGen.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
        "Ljava/lang/ClassLoader;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    .line 136
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a bridge ClassLoader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;->apply(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method
