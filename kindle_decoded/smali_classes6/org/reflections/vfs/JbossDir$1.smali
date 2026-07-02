.class Lorg/reflections/vfs/JbossDir$1;
.super Ljava/lang/Object;
.source "JbossDir.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Lorg/reflections/vfs/Vfs$File;

.field final stack:Ljava/util/Stack;

.field final synthetic this$0:Lorg/reflections/vfs/JbossDir;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/JbossDir;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lorg/reflections/vfs/JbossDir$1;->this$0:Lorg/reflections/vfs/JbossDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/JbossDir$1;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    .line 39
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->this$0:Lorg/reflections/vfs/JbossDir;

    invoke-static {v0}, Lorg/reflections/vfs/JbossDir;->access$000(Lorg/reflections/vfs/JbossDir;)Lorg/jboss/vfs/VirtualFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 3

    .line 55
    :goto_0
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/vfs/VirtualFile;

    .line 57
    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lorg/reflections/vfs/JbossDir$1;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Lorg/reflections/vfs/JbossFile;

    iget-object v2, p0, Lorg/reflections/vfs/JbossDir$1;->this$0:Lorg/reflections/vfs/JbossDir;

    invoke-direct {v1, v2, v0}, Lorg/reflections/vfs/JbossFile;-><init>(Lorg/reflections/vfs/JbossDir;Lorg/jboss/vfs/VirtualFile;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/reflections/vfs/JbossDir$1;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/reflections/vfs/JbossDir$1;->next()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/reflections/vfs/Vfs$File;
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lorg/reflections/vfs/JbossDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    return-object v0
.end method
