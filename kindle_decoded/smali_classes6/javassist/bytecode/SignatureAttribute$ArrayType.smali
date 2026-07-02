.class public Ljavassist/bytecode/SignatureAttribute$ArrayType;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayType"
.end annotation


# instance fields
.field componentType:Ljavassist/bytecode/SignatureAttribute$Type;

.field dim:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/SignatureAttribute$Type;)V
    .locals 0

    .line 849
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 850
    iput p1, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    .line 851
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 871
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 872
    :goto_0
    iget v2, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    if-ge v1, v2, :cond_0

    const-string v2, "[]"

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
