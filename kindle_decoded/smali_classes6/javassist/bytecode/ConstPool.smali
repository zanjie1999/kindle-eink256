.class public final Ljavassist/bytecode/ConstPool;
.super Ljava/lang/Object;
.source "ConstPool.java"


# instance fields
.field items:Ljavassist/bytecode/LongVector;

.field numOfItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method private addItem0(Ljavassist/bytecode/ConstInfo;)I
    .locals 1

    .line 919
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->addElement(Ljavassist/bytecode/ConstInfo;)V

    .line 920
    iget p1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return p1
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1339
    new-instance v1, Ljavassist/bytecode/LongVector;

    invoke-direct {v1, v0}, Ljavassist/bytecode/LongVector;-><init>(I)V

    iput-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    const/4 v1, 0x0

    .line 1340
    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    const/4 v1, 0x0

    .line 1341
    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 1344
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->readOne(Ljava/io/DataInputStream;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1346
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readOne(Ljava/io/DataInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1423
    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid constant type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1420
    :pswitch_1
    new-instance v1, Ljavassist/bytecode/PackageInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/PackageInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto/16 :goto_0

    .line 1417
    :pswitch_2
    new-instance v1, Ljavassist/bytecode/ModuleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/ModuleInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto/16 :goto_0

    .line 1414
    :pswitch_3
    new-instance v1, Ljavassist/bytecode/InvokeDynamicInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/InvokeDynamicInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto/16 :goto_0

    .line 1411
    :pswitch_4
    new-instance v1, Ljavassist/bytecode/DynamicInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/DynamicInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto/16 :goto_0

    .line 1408
    :pswitch_5
    new-instance v1, Ljavassist/bytecode/MethodTypeInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodTypeInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1405
    :pswitch_6
    new-instance v1, Ljavassist/bytecode/MethodHandleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodHandleInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1402
    :pswitch_7
    new-instance v1, Ljavassist/bytecode/NameAndTypeInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/NameAndTypeInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1399
    :pswitch_8
    new-instance v1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/InterfaceMethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1396
    :pswitch_9
    new-instance v1, Ljavassist/bytecode/MethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1393
    :pswitch_a
    new-instance v1, Ljavassist/bytecode/FieldrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FieldrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1390
    :pswitch_b
    new-instance v1, Ljavassist/bytecode/StringInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/StringInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1387
    :pswitch_c
    new-instance v1, Ljavassist/bytecode/ClassInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/ClassInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1384
    :pswitch_d
    new-instance v1, Ljavassist/bytecode/DoubleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/DoubleInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1381
    :pswitch_e
    new-instance v1, Ljavassist/bytecode/LongInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/LongInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1378
    :pswitch_f
    new-instance v1, Ljavassist/bytecode/FloatInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FloatInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1375
    :pswitch_10
    new-instance v1, Ljavassist/bytecode/IntegerInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/IntegerInfo;-><init>(Ljava/io/DataInputStream;I)V

    goto :goto_0

    .line 1372
    :pswitch_11
    new-instance v1, Ljavassist/bytecode/Utf8Info;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/Utf8Info;-><init>(Ljava/io/DataInputStream;I)V

    .line 1427
    :goto_0
    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addConstInfoPadding()I
    .locals 2

    .line 957
    new-instance v0, Ljavassist/bytecode/ConstInfoPadding;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, v1}, Ljavassist/bytecode/ConstInfoPadding;-><init>(I)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public getClassInfo(I)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ClassInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_0
    iget p1, p1, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDoubleInfo(I)D
    .locals 2

    .line 650
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/DoubleInfo;

    .line 651
    iget-wide v0, p1, Ljavassist/bytecode/DoubleInfo;->value:D

    return-wide v0
.end method

.method public getFloatInfo(I)F
    .locals 0

    .line 626
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/FloatInfo;

    .line 627
    iget p1, p1, Ljavassist/bytecode/FloatInfo;->value:F

    return p1
.end method

.method public getIntegerInfo(I)I
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/IntegerInfo;

    .line 615
    iget p1, p1, Ljavassist/bytecode/IntegerInfo;->value:I

    return p1
.end method

.method getItem(I)Ljavassist/bytecode/ConstInfo;
    .locals 1

    .line 245
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLongInfo(I)J
    .locals 2

    .line 638
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LongInfo;

    .line 639
    iget-wide v0, p1, Ljavassist/bytecode/LongInfo;->value:J

    return-wide v0
.end method

.method public getUtf8Info(I)Ljava/lang/String;
    .locals 0

    .line 674
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/Utf8Info;

    .line 675
    iget-object p1, p1, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    return-object p1
.end method

.method setThisClassInfo(I)V
    .locals 0

    return-void
.end method
