.class public final synthetic Lorg/reflections/scanners/-$$Lambda$SoVpVklg8vIlnDhk-4XDDPi3vD4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljavassist/bytecode/FieldInfo;


# direct methods
.method public synthetic constructor <init>(Ljavassist/bytecode/FieldInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$SoVpVklg8vIlnDhk-4XDDPi3vD4;->f$0:Ljavassist/bytecode/FieldInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$SoVpVklg8vIlnDhk-4XDDPi3vD4;->f$0:Ljavassist/bytecode/FieldInfo;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method
