.class public Ljavassist/bytecode/SignatureAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/SignatureAttribute$TypeVariable;,
        Ljavassist/bytecode/SignatureAttribute$ArrayType;,
        Ljavassist/bytecode/SignatureAttribute$NestedClassType;,
        Ljavassist/bytecode/SignatureAttribute$ClassType;,
        Ljavassist/bytecode/SignatureAttribute$ObjectType;,
        Ljavassist/bytecode/SignatureAttribute$BaseType;,
        Ljavassist/bytecode/SignatureAttribute$Type;,
        Ljavassist/bytecode/SignatureAttribute$TypeArgument;,
        Ljavassist/bytecode/SignatureAttribute$Cursor;
    }
.end annotation


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 0

    .line 31
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    return-object p0
.end method

.method private static error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 3

    .line 1171
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1156
    :goto_0
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr v2, v0

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ArrayType;

    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavassist/bytecode/SignatureAttribute$ArrayType;-><init>(ILjavassist/bytecode/SignatureAttribute$Type;)V

    return-object v0
.end method

.method private static parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1110
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1113
    :cond_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    const/16 v3, 0x24

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_0

    .line 1115
    :cond_1
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v2, :cond_2

    .line 1118
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    move-result-object v1

    .line 1119
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .line 1124
    :goto_0
    invoke-static {p0, v0, v4, v1, p2}, Ljavassist/bytecode/SignatureAttribute$ClassType;->make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p2

    if-eq v2, v3, :cond_4

    const/16 v0, 0x2e

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    return-object p2

    .line 1126
    :cond_4
    :goto_1
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1127
    invoke-static {p0, p1, p2}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p0

    return-object p0
.end method

.method private static parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1083
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1084
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x54

    if-eq v1, v2, :cond_2

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_1

    if-eqz p2, :cond_0

    return-object v3

    .line 1095
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0

    .line 1091
    :cond_1
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0x3b

    .line 1088
    invoke-virtual {p1, p0, p2}, Ljavassist/bytecode/SignatureAttribute$Cursor;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 1089
    new-instance p2, Ljavassist/bytecode/SignatureAttribute$TypeVariable;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p2, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute$TypeVariable;-><init>(Ljava/lang/String;II)V

    return-object p2

    .line 1086
    :cond_3
    invoke-static {p0, p1, v3}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object p0

    return-object p0
.end method

.method private static parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1163
    invoke-static {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$BaseType;

    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/SignatureAttribute$BaseType;-><init>(C)V

    :cond_0
    return-object v0
.end method

.method private static parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    .line 1138
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/16 v1, 0x20

    .line 1142
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1145
    :cond_1
    new-instance v2, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    move-object v1, v2

    .line 1148
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1151
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-object p0
.end method

.method public static toTypeSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 996
    :try_start_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 999
    :catch_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p0

    throw p0
.end method
