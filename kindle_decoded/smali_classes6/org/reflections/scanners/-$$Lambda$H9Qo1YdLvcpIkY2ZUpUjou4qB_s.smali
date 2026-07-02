.class public final synthetic Lorg/reflections/scanners/-$$Lambda$H9Qo1YdLvcpIkY2ZUpUjou4qB_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljavassist/bytecode/ClassFile;


# direct methods
.method public synthetic constructor <init>(Ljavassist/bytecode/ClassFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$H9Qo1YdLvcpIkY2ZUpUjou4qB_s;->f$0:Ljavassist/bytecode/ClassFile;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$H9Qo1YdLvcpIkY2ZUpUjou4qB_s;->f$0:Ljavassist/bytecode/ClassFile;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method
