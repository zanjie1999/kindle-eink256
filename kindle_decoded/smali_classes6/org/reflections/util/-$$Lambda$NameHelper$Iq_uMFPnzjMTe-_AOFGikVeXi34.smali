.class public final synthetic Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/util/NameHelper;

.field private final synthetic f$1:[Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/util/NameHelper;[Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;->f$0:Lorg/reflections/util/NameHelper;

    iput-object p2, p0, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;->f$1:[Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;->f$0:Lorg/reflections/util/NameHelper;

    iget-object v1, p0, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;->f$1:[Ljava/lang/ClassLoader;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/reflections/util/NameHelper$-CC;->lambda$forMember$0(Lorg/reflections/util/NameHelper;[Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
