.class Ljavassist/bytecode/Descriptor$PrettyPrinter;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrettyPrinter"
.end annotation


# direct methods
.method static readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I
    .locals 3

    .line 742
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 746
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_3

    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 751
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    const/16 v0, 0x2e

    .line 758
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 761
    :cond_3
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object p2

    .line 762
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_4

    const-string v0, "[]"

    .line 766
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, p2

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 722
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 723
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 725
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 726
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    if-le v2, v1, :cond_0

    const/16 v3, 0x2c

    .line 728
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    :cond_0
    invoke-static {v0, v2, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 736
    :cond_2
    invoke-static {v0, v1, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    .line 738
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
