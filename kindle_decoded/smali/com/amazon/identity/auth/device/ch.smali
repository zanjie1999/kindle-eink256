.class public final Lcom/amazon/identity/auth/device/ch;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ch"

.field private static volatile id:Lcom/amazon/identity/auth/device/ch;


# instance fields
.field private final ie:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ch;->ie:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static bO()Lcom/amazon/identity/auth/device/ch;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/ch;->id:Lcom/amazon/identity/auth/device/ch;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/ch;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ch;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/ch;->id:Lcom/amazon/identity/auth/device/ch;

    .line 29
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/ch;->id:Lcom/amazon/identity/auth/device/ch;

    return-object v0
.end method


# virtual methods
.method public O()V
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/identity/auth/device/ch;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ch;->ie:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ch;->ie:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ch;->ie:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ch;->ie:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
