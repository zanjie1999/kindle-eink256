.class public Ljavassist/bytecode/annotation/ClassMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ClassMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x63

    .line 44
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 45
    iput p1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :try_start_0
    invoke-static {v0}, Ljavassist/bytecode/SignatureAttribute;->toTypeSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/SignatureAttribute$Type;->jvmTypeName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ClassMemberValue;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
