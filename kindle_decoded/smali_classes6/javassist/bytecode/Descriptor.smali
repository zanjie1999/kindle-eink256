.class public Ljavassist/bytecode/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/Descriptor$Iterator;,
        Ljavassist/bytecode/Descriptor$PrettyPrinter;
    }
.end annotation


# direct methods
.method public static toClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    const/16 v2, 0x3b

    add-int/lit8 v3, v1, 0x1

    .line 82
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 83
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x56

    if-ne v2, v3, :cond_2

    const-string v2, "void"

    goto :goto_1

    :cond_2
    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    const-string v2, "int"

    goto :goto_1

    :cond_3
    const/16 v3, 0x42

    if-ne v2, v3, :cond_4

    const-string v2, "byte"

    goto :goto_1

    :cond_4
    const/16 v3, 0x4a

    if-ne v2, v3, :cond_5

    const-string v2, "long"

    goto :goto_1

    :cond_5
    const/16 v3, 0x44

    if-ne v2, v3, :cond_6

    const-string v2, "double"

    goto :goto_1

    :cond_6
    const/16 v3, 0x46

    if-ne v2, v3, :cond_7

    const-string v2, "float"

    goto :goto_1

    :cond_7
    const/16 v3, 0x43

    if-ne v2, v3, :cond_8

    const-string v2, "char"

    goto :goto_1

    :cond_8
    const/16 v3, 0x53

    if-ne v2, v3, :cond_9

    const-string v2, "short"

    goto :goto_1

    :cond_9
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_d

    const-string v2, "boolean"

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_c

    if-nez v0, :cond_a

    return-object v2

    .line 112
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_b
    const-string p0, "[]"

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_b

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiple descriptors?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 53
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toPrimitiveClass(C)Ljavassist/CtClass;
    .locals 1

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 600
    :pswitch_0
    sget-object p0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    goto :goto_0

    .line 582
    :pswitch_1
    sget-object p0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    goto :goto_0

    .line 585
    :pswitch_2
    sget-object p0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    goto :goto_0

    .line 594
    :cond_0
    sget-object p0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    goto :goto_0

    .line 591
    :cond_1
    sget-object p0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    goto :goto_0

    .line 579
    :cond_2
    sget-object p0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    goto :goto_0

    .line 603
    :cond_3
    sget-object p0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    goto :goto_0

    .line 588
    :cond_4
    sget-object p0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    goto :goto_0

    .line 597
    :cond_5
    sget-object p0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 717
    invoke-static {p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
