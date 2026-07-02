.class Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;
.super Ljava/lang/Object;
.source "SingleMethodInjector.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
