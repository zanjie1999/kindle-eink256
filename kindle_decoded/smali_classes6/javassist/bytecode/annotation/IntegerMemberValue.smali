.class public Ljavassist/bytecode/annotation/IntegerMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "IntegerMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x49

    .line 41
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
