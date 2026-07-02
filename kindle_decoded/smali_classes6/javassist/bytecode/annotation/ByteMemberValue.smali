.class public Ljavassist/bytecode/annotation/ByteMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ByteMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x42

    .line 40
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()B
    .locals 2

    .line 76
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
