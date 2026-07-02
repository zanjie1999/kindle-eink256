.class public final synthetic Lorg/reflections/util/-$$Lambda$L738XzsFxtxEHAo70ZGcpstd_Vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/util/NameHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/util/NameHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/util/-$$Lambda$L738XzsFxtxEHAo70ZGcpstd_Vs;->f$0:Lorg/reflections/util/NameHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/util/-$$Lambda$L738XzsFxtxEHAo70ZGcpstd_Vs;->f$0:Lorg/reflections/util/NameHelper;

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, p1}, Lorg/reflections/util/NameHelper;->toName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
