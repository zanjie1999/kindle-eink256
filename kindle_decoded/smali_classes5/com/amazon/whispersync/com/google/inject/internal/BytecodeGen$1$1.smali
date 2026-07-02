.class Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;
.super Ljava/lang/Object;
.source "BytecodeGen.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;->apply(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;

.field final synthetic val$typeClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;->val$typeClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 2

    .line 139
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;->val$typeClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1$1;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
