.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Sl9vGyhncTF3kfanCKPE9uq_Et4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public synthetic constructor <init>(Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Sl9vGyhncTF3kfanCKPE9uq_Et4;->f$0:Ljavassist/bytecode/MethodInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Sl9vGyhncTF3kfanCKPE9uq_Et4;->f$0:Ljavassist/bytecode/MethodInfo;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method
