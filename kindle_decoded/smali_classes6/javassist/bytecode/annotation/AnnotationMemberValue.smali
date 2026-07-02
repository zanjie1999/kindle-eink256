.class public Ljavassist/bytecode/annotation/AnnotationMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "AnnotationMemberValue.java"


# instance fields
.field value:Ljavassist/bytecode/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/16 v0, 0x40

    .line 45
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 46
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationMemberValue;->value:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
