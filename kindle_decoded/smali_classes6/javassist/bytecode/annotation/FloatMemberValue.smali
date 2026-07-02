.class public Ljavassist/bytecode/annotation/FloatMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "FloatMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x46

    .line 42
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 43
    iput p1, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 78
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/FloatMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/FloatMemberValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
