.class public Ljavassist/bytecode/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field protected constPool:Ljavassist/bytecode/ConstPool;

.field info:[B

.field name:I


# direct methods
.method protected constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 68
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 69
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 70
    new-array p2, p1, [B

    iput-object p2, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    if-lez p1, :cond_0

    .line 72
    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;I[B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 44
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 45
    iput-object p3, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-void
.end method

.method static lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 215
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method static read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x45

    if-ge v2, v3, :cond_4

    const-string v3, "AnnotationDefault"

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    new-instance v1, Ljavassist/bytecode/AnnotationDefaultAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_0
    const-string v3, "BootstrapMethods"

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v1, Ljavassist/bytecode/BootstrapMethodsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/BootstrapMethodsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_1
    const-string v3, "Code"

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v1, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_2
    const-string v3, "ConstantValue"

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    new-instance v1, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_3
    const-string v3, "Deprecated"

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v1, Ljavassist/bytecode/DeprecatedAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/DeprecatedAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_4
    const/16 v3, 0x4d

    if-ge v2, v3, :cond_a

    const-string v3, "EnclosingMethod"

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    new-instance v1, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_5
    const-string v3, "Exceptions"

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    new-instance v1, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_6
    const-string v3, "InnerClasses"

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    new-instance v1, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_7
    const-string v3, "LineNumberTable"

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    new-instance v1, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_8
    const-string v3, "LocalVariableTable"

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    new-instance v1, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_9
    const-string v3, "LocalVariableTypeTable"

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    new-instance v1, Ljavassist/bytecode/LocalVariableTypeAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/LocalVariableTypeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_a
    const/16 v3, 0x53

    if-ge v2, v3, :cond_13

    const-string v4, "MethodParameters"

    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 110
    new-instance v1, Ljavassist/bytecode/MethodParametersAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/MethodParametersAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_b
    const-string v4, "NestHost"

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 112
    new-instance v1, Ljavassist/bytecode/NestHostAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/NestHostAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_c
    const-string v4, "NestMembers"

    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 114
    new-instance v1, Ljavassist/bytecode/NestMembersAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/NestMembersAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_d
    const-string v4, "RuntimeVisibleAnnotations"

    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "RuntimeInvisibleAnnotations"

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_1

    :cond_e
    const-string v4, "RuntimeVisibleParameterAnnotations"

    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "RuntimeInvisibleParameterAnnotations"

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    :cond_f
    const-string v4, "RuntimeVisibleTypeAnnotations"

    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "RuntimeInvisibleTypeAnnotations"

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 124
    :cond_10
    new-instance v1, Ljavassist/bytecode/TypeAnnotationsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 121
    :cond_11
    :goto_0
    new-instance v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 118
    :cond_12
    :goto_1
    new-instance v1, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_13
    if-lt v2, v3, :cond_18

    const-string v2, "Signature"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 128
    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_14
    const-string v2, "SourceFile"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 130
    new-instance v1, Ljavassist/bytecode/SourceFileAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_15
    const-string v2, "Synthetic"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 132
    new-instance v1, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_16
    const-string v2, "StackMap"

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 134
    new-instance v1, Ljavassist/bytecode/StackMap;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    :cond_17
    const-string v2, "StackMapTable"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 136
    new-instance v1, Ljavassist/bytecode/StackMapTable;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1

    .line 138
    :cond_18
    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-direct {v1, p0, v0, p1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v1
.end method

.method static declared-synchronized remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    const-class v0, Ljavassist/bytecode/AttributeInfo;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 223
    monitor-exit v0

    return-object v1

    .line 225
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 226
    invoke-virtual {v3}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 228
    monitor-exit v0

    return-object v3

    .line 230
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
