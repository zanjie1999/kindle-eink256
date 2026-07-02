.class Ljavassist/bytecode/AnnotationsAttribute$Walker;
.super Ljava/lang/Object;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Walker"
.end annotation


# instance fields
.field info:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    return-void
.end method


# virtual methods
.method final annotation(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 389
    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    add-int/lit8 p1, p1, 0x4

    .line 390
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result p1

    return p1
.end method

.method annotation(III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method final annotationArray(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 377
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(II)I

    move-result p1

    return p1
.end method

.method annotationArray(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method final annotationArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(I)I

    return-void
.end method

.method annotationMemberValue(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(I)I

    move-result p1

    return p1
.end method

.method arrayMemberValue(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method classMemberValue(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method constValueMember(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method enumMemberValue(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method final memberValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 421
    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 422
    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    add-int/lit8 v2, p1, 0x3

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 423
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    add-int/lit8 p1, p1, 0x5

    return p1

    :cond_0
    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 427
    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 428
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_1
    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 432
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationMemberValue(I)I

    move-result p1

    return p1

    :cond_2
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 434
    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    .line 435
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->arrayMemberValue(II)I

    move-result p1

    return p1

    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 438
    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 439
    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->constValueMember(II)V

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method final memberValuePair(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 405
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(II)I

    move-result p1

    return p1
.end method

.method memberValuePair(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValue(I)I

    move-result p1

    return p1
.end method

.method final parameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Walker;->info:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 363
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->parameters(II)V

    return-void
.end method

.method parameters(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method
