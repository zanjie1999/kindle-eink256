.class public final Ljavassist/bytecode/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# instance fields
.field attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field cachedInterfaces:[Ljava/lang/String;

.field cachedSuperclass:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field interfaces:[I

.field methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field superClass:I

.field thisClass:I

.field thisclassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "java.lang.StringBuilder"

    .line 162
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "java.util.zip.DeflaterInputStream"

    .line 164
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "java.lang.invoke.CallSite"

    .line 166
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v0, "java.util.function.Function"

    .line 168
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "java.lang.Module"

    .line 170
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 172
    const-class v0, Ljava/util/List;

    const-string v1, "copyOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Collection;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "java.util.Optional"

    .line 174
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isEmpty"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_5

    .line 792
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 793
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 794
    new-instance v0, Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 795
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 796
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 797
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->setThisClassInfo(I)V

    .line 798
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 799
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 801
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    goto :goto_1

    .line 803
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 805
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    :cond_1
    :goto_1
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 809
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 812
    new-instance v4, Ljavassist/bytecode/FieldInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addField2(Ljavassist/bytecode/FieldInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 814
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 815
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 817
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addMethod2(Ljavassist/bytecode/MethodInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 819
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    .line 820
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_4

    .line 822
    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 824
    :cond_4
    iget-object p1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-void

    .line 790
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad magic number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2

    .line 769
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 770
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addField2(Ljavassist/bytecode/FieldInfo;)V
    .locals 1

    .line 611
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addMethod2(Ljavassist/bytecode/MethodInfo;)V
    .locals 1

    .line 673
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 3

    .line 745
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 746
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 4

    .line 530
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 534
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_1

    .line 537
    :cond_1
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 538
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 539
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_2
    :goto_1
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 2

    .line 397
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 400
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    return-object v0
.end method
