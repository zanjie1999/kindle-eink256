.class public Ljavassist/bytecode/annotation/CharMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "CharMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x43

    .line 41
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()C
    .locals 2

    .line 77
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
