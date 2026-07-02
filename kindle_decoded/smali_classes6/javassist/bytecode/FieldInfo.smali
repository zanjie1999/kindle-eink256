.class public final Ljavassist/bytecode/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


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
.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 72
    invoke-direct {p0, p2}, Ljavassist/bytecode/FieldInfo;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 273
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 274
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 275
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    iget-object v2, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    iget-object v3, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

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

    .line 243
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
