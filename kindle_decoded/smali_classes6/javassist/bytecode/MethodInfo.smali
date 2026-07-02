.class public Ljavassist/bytecode/MethodInfo;
.super Ljava/lang/Object;
.source "MethodInfo.java"


# instance fields
.field attribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field cachedName:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field descriptor:I

.field name:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 109
    invoke-direct {p0, p2}, Ljavassist/bytecode/MethodInfo;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 563
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 564
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 565
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 568
    iget-object v2, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    iget-object v3, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 330
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 218
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method public isMethod()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
