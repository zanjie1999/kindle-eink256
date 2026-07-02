.class public Ljavassist/bytecode/annotation/LongMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "LongMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x4a

    .line 41
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/LongMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 77
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/LongMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/LongMemberValue;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
