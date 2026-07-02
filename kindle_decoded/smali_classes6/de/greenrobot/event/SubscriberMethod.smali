.class final Lde/greenrobot/event/SubscriberMethod;
.super Ljava/lang/Object;
.source "SubscriberMethod.java"


# instance fields
.field final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final method:Ljava/lang/reflect/Method;

.field methodString:Ljava/lang/String;

.field final threadMode:Lde/greenrobot/event/ThreadMode;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lde/greenrobot/event/ThreadMode;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    .line 29
    iput-object p2, p0, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    .line 30
    iput-object p3, p0, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    return-void
.end method

.method private declared-synchronized checkMethodString()V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 35
    instance-of v0, p1, Lde/greenrobot/event/SubscriberMethod;

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lde/greenrobot/event/SubscriberMethod;->checkMethodString()V

    .line 37
    check-cast p1, Lde/greenrobot/event/SubscriberMethod;

    .line 38
    invoke-direct {p1}, Lde/greenrobot/event/SubscriberMethod;->checkMethodString()V

    .line 40
    iget-object v0, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    iget-object p1, p1, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method
