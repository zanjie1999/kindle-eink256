.class final Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;
.super Ljava/lang/Object;
.source "NonSerialTopologicallySortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient dependsOn:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private transient pointedToBy:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->pointedToBy:Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->pointedToBy:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->pointedToBy:Ljava/util/Collection;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 191
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->pointedToBy:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addDependency(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->dependsOn:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->pointedToBy:Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "node cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 165
    instance-of v0, p1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_0
    check-cast p1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 170
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->access$000(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
