.class public Ljavassist/bytecode/annotation/DoubleMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "DoubleMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x44

    .line 42
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 43
    iput p1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .line 78
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
