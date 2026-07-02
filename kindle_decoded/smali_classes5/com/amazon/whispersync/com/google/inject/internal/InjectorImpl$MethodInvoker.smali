.class interface abstract Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MethodInvoker"
.end annotation


# virtual methods
.method public varargs abstract invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
